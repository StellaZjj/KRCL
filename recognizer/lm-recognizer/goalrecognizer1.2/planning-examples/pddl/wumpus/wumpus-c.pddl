
;; Wumpus World, Final STRIPS Version.
;;
;; This domain is very similar to the one defined in wumpus-b.pddl, but
;; corrects the problem of the agent moving passed the wumpus unharmed
;; (and also forbids the wumpus from moving or shooting the agent).
;;
;; A nicer model can be defined using ADL features: see wumpus-adl.pddl.
;;
;; An example problem can be found in wumpus-c-1.pddl.

(define (domain wumpus-c)
  (:requirements :strips)
  (:predicates
   (at ?what ?square)
   (adj ?square-1 ?square-2)
   (pit ?square)
   (wumpus-in ?square)
   (have ?who ?what)
   (is-agent ?who)
   (is-wumpus ?who)
   (is-gold ?what)
   (is-arrow ?what)
   (dead ?who))

  ;; Here, we add the "type" requirement that the moving object is
  ;; in fact the agent, and also the condition that there is not a
  ;; live wumpus in the ?to square.
  (:action move
    :parameters (?who ?from ?to)
    :precondition (and (is-agent ?who)
		       (at ?who ?from)
		       (adj ?from ?to)
		       (not (pit ?to))
		       (not (wumpus-in ?to))
		       )
    :effect (and (not (at ?who ?from)) (at ?who ?to))
    )

  (:action take
    :parameters (?who ?what ?where)
    :precondition (and (is-agent ?who) (at ?who ?where) (at ?what ?where))
    :effect (and (have ?who ?what) (not (at ?what ?where)))
    )

  ;; Since the predicate (wumpus-in ?square) should be true only if there
  ;; is a live wumpus in ?square, the shoot action (which changes alive)
  ;; has to make sure that wumpus-in is also changed correctly.
  (:action shoot
    :parameters (?who ?where ?with-what ?victim ?where-victim)
    :precondition (and (is-agent ?who)
		       (have ?who ?with-what)
		       (is-arrow ?with-what)
		       (at ?who ?where)
		       (is-wumpus ?victim)
		       (at ?victim ?where-victim)
		       (adj ?where ?where-victim))
    :effect (and (dead ?victim)
		 (not (wumpus-in ?where-victim))
		 (not (have ?who ?with-what)))
    )
)
