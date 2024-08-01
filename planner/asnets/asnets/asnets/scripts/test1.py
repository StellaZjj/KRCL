
import argparse
import atexit
from contextlib import ExitStack
from json import dump
from os import makedirs, path
import random
import signal
import sys
from time import time

import joblib
import numpy as np
import rpyc
import tensorflow as tf
# for some reason "import tensorflow.python.debug" doesn't work (maybe it's a
# class or something?)
from tensorflow.python import debug as tfdbg

from asnets.models import PropNetworkWeights, PropNetwork
from asnets.supervised import SupervisedTrainer, SupervisedObjective, \
    ProblemServiceConfig
from asnets.multiprob import ProblemServer, to_local, parent_death_pact
from asnets.prof_utils import can_profile
from asnets.py_utils import set_random_seeds

def main_supervised(args, unique_prefix, snapshot_dir, scratch_dir):
    print('Training supervised')

    start_time = time()
    problems, weight_manager = make_services(args)

    # need to create FileWriter *after* creating the policy network itself, or
    # the network will not show up in TB (I assume that the `Graph` view is
    # just a snapshot of the global TF op graph at the time a given
    # `FileWriter` is instantiated)
    summary_path = path.join(scratch_dir, 'tensorboard')
    if args.minimal_file_saves:
        sample_writer = None
    else:
        sample_writer = tf.summary.FileWriter(
            summary_path, graph=tf.get_default_graph())

    with ExitStack() as stack:
        config = tf.ConfigProto()
        config.graph_options.optimizer_options.opt_level = 1
        sess = tf.Session(config=config)
        stack.enter_context(sess)
        # need to keep session around for as long as we want to use the
        # network which we build
        
        assert not args.dropout, \
            f"--no-train provided, but we have dropout of {args.dropout}?"
        # need to fill up stats values with garbage :P
        elapsed_time = iter_num = None
        # normally trainers do this




        # evaluate
        if weight_manager is not None and not args.minimal_file_saves:
            weight_manager.save(path.join(snapshot_dir, 'snapshot_final.pkl'))
        
        total_goal_reached_times = []
        total_mean_exec_times = []
        total_mean_cost = []
        print('==============eval problem===============')
        print(problems)
        print('==========================================')
        for problem in problems:
            print('Evaluating on %s' % problem.name)
            goal_reached_times, mean_exec_times, mean_cost = eval_single(args, problem.policy, problem.problem_server,
                        unique_prefix + '-' + problem.name, elapsed_time,
                        iter_num, weight_manager, scratch_dir)
            
            total_goal_reached_times.append(goal_reached_times)
            total_mean_exec_times.append(mean_exec_times)
            total_mean_cost.append(mean_cost)

            '''
            eval_single(args, problem.policy, problem.problem_server,
                        unique_prefix + '-' + problem.name, elapsed_time,
                        iter_num, weight_manager, scratch_dir)
            '''
        print('+++++++++++++++ total result ++++++++++++++++')
        print('------------- total_goal_reached_times ---------------')
        print(total_goal_reached_times)
        print('------------------------ mean ------------------------')
        print(sum(total_goal_reached_times)/len(total_goal_reached_times))
        print('------------- total_mean_exec_times ---------------')
        print(total_mean_exec_times)
        print('------------------------ mean ------------------------')
        print(sum(total_mean_exec_times)/len(total_mean_exec_times))
        print('------------- total_mean_cost ---------------')
        print(total_mean_cost)
        print('------------------------ mean ------------------------')
        print(sum(total_mean_cost)/len(total_mean_cost))
        print('++++++++++++++++++++++++++++++++++++++++++++++')