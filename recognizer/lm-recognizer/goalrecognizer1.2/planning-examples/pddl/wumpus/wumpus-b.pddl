
;; Wumpus World, Improved.
;;
;; In this domain, there are four kinds of objects: Squares are places
;; where objects of the other kinds may be. Things that are alive (the
;; agent and the wumpus) can move around, pick up things, and shoot
;; arrows. Arrows and gold are the two kinds of non-alive objects.
;;
;; Note: This domain is not quite a correct model of the Wumpus world
;; (though it is much better than wumpus-a.pddl). For example, our agent
;; can walk unharmed through a square containing a live wumpus. A better
;; STRIPS model is found in wumpus-c.pddl.
;;
;; An example problem can be found in wumpus-b-1.pddl.

(define (domain wumpus-b)
  (:requirements :strips)
  (:predicates

   ;; The "at" predicate specifies the location of agents, wumpuses and
   ;; objects.
   (at ?what ?square)

   ;; "adj" defines an adjacency relation on squares: the agent can only
   ;; move between adjacent squares.
   (adj ?square-1 ?square-2)
   
   ;; True if the square contains a bottomless pit.
   (pit ?square)

   ;; The "have" predicate keeps track of what the agent carries.
   (have ?who ?what)

   ;; "is-gold" and "is-arrow" are used to specify the type of an object.
   (is-gold ?what)
   (is-arrow ?what)

   ;; Similarly, "alive" is true for those objects in the world that are
   ;; living things (the agent and the wumpus) as long as they are alive.
   ;; The predicate "dead" is of course meant to be equivalent to "not
   ;; alive", but we can not specify this: instead, we have to make sure
   ;; that all actions that change the value of "alive" also change the
   ;; the value of "dead" appropriately.
   (alive ?who)
   (dead ?who))

  ;; The "move" action is used to move the agent around the maze.
  ;; The precondition specifies that (1) the object that moves ("?who")
  ;; must be alive, (2) the moving object must be in the "?from" square,
  ;; (3) the "?to" square must be adjacent to "?from", and (4) that the
  ;; square we move to must not be a pit.
  ;; The effect of moving is that the moving object is no longer in
  ;; the ?from square, but is instead in the ?to square.
  ;;
  ;; Note: In general, negated preconditions are not allowed in STRIPS.
  ;; The "pit" predicate, however, is special in that it is static
  ;; (meaning there are no actions that change the truth value of "pit"),
  ;; and many planners accept negative static preconditions (even if they
  ;; don't support negation in general).
  (:action move
    :parameters (?who ?from ?to)
    :precondition (and (alive ?who) (at ?who ?from)
		       (adj ?from ?to) (not (pit ?to)))
    :effect (and (not (at ?who ?from)) (at ?who ?to))
    )

  ;; The "take" action allows a living object to pick up an object that
  ;; is in the same square. Afterwards, the object is no longer considered
  ;; to be in the square (instead, the agent has it).
  (:action take
    :parameters (?who ?what ?where)
    :precondition (and (alive ?who) (at ?who ?where) (at ?what ?where))
    :effect (and (have ?who ?what) (not (at ?what ?where)))
    )

  ;; The "shoot" action allows the agent to shoot the wumpus (or vice
  ;; versa!) Since arrows are objects in themselves, we must use a
  ;; parameter to specify which arrow will be used for the shot.
  (:action shoot
    :parameters (?who ?where ?with-what ?victim ?where-victim)
    :precondition (and (alive ?who)
		       (have ?who ?with-what)
		       (is-arrow ?with-what)
		       (at ?who ?where)
		       (alive ?victim)
		       (at ?victim ?where-victim)
		       (adj ?where ?where-victim))
    :effect (and (dead ?victim)
		 (not (alive ?victim))
		 (not (at ?victim ?where-victim))
		 (not (have ?who ?with-what)))
    )
)
