
;; This is a problem definition for the wumpus-a version of the
;; the Wumpus World (see wumpus-a.pddl). This domain model is
;; faulty, in the sense that it allows plans that are absolutely
;; not intended: run the problem through a planner and try to
;; explain how it could reach such a result.

(define (problem wumpus-a-1)
  (:domain wumpus-a)
  (:objects

   ;; These objects represent the squares of a 2x3 grid.
   s-1-1 s-1-2 s-1-3
   s-2-1 s-2-2 s-2-3

   ;; These objects represent the gold, arrow, agent and
   ;; wumpus.
   gold-1
   arrow-1
   agent
   wumpus)
  (:init

   ;; We have to specify the adjacency relation on the set of
   ;; squares completely (though see slidetile.pddl for an
   ;; example of how positions in a grid can be represented
   ;; more compactly).
   (adj s-1-1 s-1-2) (adj s-1-2 s-1-1)
   (adj s-1-2 s-1-3) (adj s-1-3 s-1-2)
   (adj s-2-1 s-2-2) (adj s-2-2 s-2-1)
   (adj s-2-2 s-2-3) (adj s-2-3 s-2-2)
   (adj s-1-1 s-2-1) (adj s-2-1 s-1-1)
   (adj s-1-2 s-2-2) (adj s-2-2 s-1-2)
   (adj s-1-3 s-2-3) (adj s-2-3 s-1-3)

   ;; Static predicates are specified in :init same as any other
   ;; predicates: the difference is only that no action changes
   ;; these values, a fact that many planners recognize and
   ;; exploit to simplify the problem.
   ;;
   (pit s-1-2)
   (is-gold gold-1)
   (is-arrow arrow-1)

   (at gold-1 s-1-3)
   (at agent s-1-1)
   (have agent arrow-1)
   (at wumpus s-2-3))

  ;; The goal is for the agent to get the gold and make it safely
  ;; back to the starting square.
  (:goal (and (have agent gold-1) (at agent s-1-1)))
  )
