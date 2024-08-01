import difflib
import subprocess
import numpy as np
import os
from subprocess import Popen, PIPE



def call_recognizer(domain='.../domain.pddl', problem='.../template.pddl',
                    hyp='.../hyps.dat', obs='.../obs_p01.dat', 
                    real_hyp='.../real_hyp.dat'):


    #curr = time.time()    
    p = Popen(['java', '-jar', 'goalrecognizer1.2.jar' ,'-goalcompletion' , domain, problem, hyp, obs, real_hyp, '0.0'], stdin=PIPE, stdout=PIPE, stderr=PIPE)
    #output = p.stderr.read()
    output = p.stdout.read()
    #print('Rec time:', time.time() - curr)
    # sp = str(output).replace('\'', '').replace('b','').split('\\n')
    sp = str(output).replace('\'', '').split('\\n')
    real_goal = []
    recg_goal = []
    #print(sp)
    signal = False
    real_goal = ''
    recg_goal = ''

    
    if os.path.exists('.../recg_output2.txt'):
        os.remove('.../recg_output2.txt')

    for rank in sp:

        with open('.../recg_output2.txt', 'a') as f:
            f.write(rank)
            f.write("\n")

        if 'Correct goal' in rank:
            real_goal = rank.split(':')[1]
            real_goal = real_goal[1 : -2].replace('  ',' ')

        if signal:
            recg_goal = rank.split(':')[0]
            recg_goal = recg_goal[3 : -2].replace('  ',' ')
            signal = False

        if 'Recognized goal' in rank:
            signal = True  
    goal_sim = difflib.SequenceMatcher(None, real_goal, recg_goal).quick_ratio()

    return goal_sim
