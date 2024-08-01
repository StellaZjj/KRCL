
;; Wumpus World, First try.
;;
;; Note: There are several errors in this model. See wumpus-b.pddl
;; and wumpus-c.pddl for better STRIPS models, and wumpus-adl.pddl
;; for an example of a model that uses ADL features.
;;
;; An example problem can be found in wumpus-a-1.pddl.

(define (domain wumpus-a)
  (:requirements :strips)
  (:predicates (at ?what ?square)
	       (adj ?square-1 ?square-2)
	       (pit ?square)
	       (have ?who ?what)
	       (is-gold ?what)
	       (is-arrow ?what)
	       (dead ?who))

  (:action move
    :parameters (?who ?from ?to)
    :precondition (and (at ?who ?from) (adj ?from ?to)
		       (not (pit ?to)))
    :effect (and (not (at ?who ?from)) (at ?who ?to))
    )

  (:action take
    :parameters (?who ?what ?where)
    :precondition (and (at ?who ?where) (at ?what ?where))
    :effect (and (have ?who ?what) (not (at ?what ?where)))
    )

  (:action shoot
    :parameters (?who ?where ?with-what ?victim ?where-victim)
    :precondition (and (have ?who ?with-what)
		       (is-arrow ?with-what)
		       (at ?who ?where)
		       (at ?victim ?where-victim)
		       (adj ?where ?where-victim))
    :effect (and (dead ?victim) (not (at ?victim ?where-victim))
		 (not (have ?who ?with-what)))
    )
)
