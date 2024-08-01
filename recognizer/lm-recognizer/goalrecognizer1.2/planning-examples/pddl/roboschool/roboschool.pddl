(define (domain roboschool)
    (:requirements :strips :typing :negative-preconditions)
    
    (:types room piece bin - object)
    
    (:predicates (at ?room - room)
                (in ?object ?place - object)
                (has ?piece - piece)
                (connected ?r1 ?r2 - room)
                (color ?piece ?color - object)
                (shape ?piece ?shape - object)
                (blocked ?room - room)
                (encumbered)
    )
    
    ;(:constants red green blue square circle triangle - object)
    
    (:action pick
        :parameters (?p - piece ?r - room)
        :precondition (and (at ?r) (in ?p ?r) (not (encumbered)))
        :effect (and
            (has ?p)
            (not (in ?p ?r))
            (encumbered)
        )
    )
    
    (:action throw
        :parameters (?p - piece ?r1 ?r2 - room ?b - bin)
        :precondition (and (at ?r1) (in ?b ?r2) (has ?p) (connected ?r1 ?r2))
        :effect (and
            (in ?p ?b)
            (not (has ?p))
            (not (encumbered))
        )
    )
    
    (:action walk
        :parameters (?r1 ?r2 - room)
        :precondition (and (at ?r1) (connected ?r1 ?r2) (not (blocked ?r2)))
        :effect (and
            (at ?r2)
            (not (at ?r1))
        )
    )
)