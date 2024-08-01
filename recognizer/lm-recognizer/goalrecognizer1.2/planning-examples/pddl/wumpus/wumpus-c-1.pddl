
;; This is a problem definition for the wumpus-c version of the
;; the Wumpus World (see wumpus-c.pddl).

(define (problem wumpus-c-1)
  (:domain wumpus-c)
  (:objects s-1-1 s-1-2 s-1-3
	    s-2-1 s-2-2 s-2-3
	    gold-1 arrow-1
	    agent wumpus)
  (:init (adj s-1-1 s-1-2) (adj s-1-2 s-1-1)
	 (adj s-1-2 s-1-3) (adj s-1-3 s-1-2)
	 (adj s-2-1 s-2-2) (adj s-2-2 s-2-1)
	 (adj s-2-2 s-2-3) (adj s-2-3 s-2-2)
	 (adj s-1-1 s-2-1) (adj s-2-1 s-1-1)
	 (adj s-1-2 s-2-2) (adj s-2-2 s-1-2)
	 (adj s-1-3 s-2-3) (adj s-2-3 s-1-3)
	 (pit s-1-2)
	 (is-gold gold-1)
	 (at gold-1 s-1-3)
	 (is-agent agent)
	 (at agent s-1-1)
	 (is-arrow arrow-1)
	 (have agent arrow-1)
	 (is-wumpus wumpus)
	 (at wumpus s-2-3)
	 (wumpus-in s-2-3))
  (:goal (and (have agent gold-1) (at agent s-1-1)))
  )
