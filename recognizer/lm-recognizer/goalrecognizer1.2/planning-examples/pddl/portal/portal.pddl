(define (domain portal)
	(:requirements :strips :typing)
	(:types 
		location cube portal - object
		hallway room - location
		)
	(:predicates 
		(at ?l - location)
		(connected ?l1 ?l2  - location)
		(in ?c - cube ?l - location)
		(has ?c - cube)
		(unloaded)
		(portal ?p1 ?p2 - portal)
		(open ?p - portal ?l - location)
		(color ?p - portal)
		(flatwall ?l - location)
		)
	
	(:action move
		:parameters 
			(?l1 - hallway
			 ?l2 - hallway)
 	    :precondition
 			(and (connected ?l1 ?l2) (at ?l1) (unloaded))
 		:effect
 			(and (not (at ?l1)) (at ?l2))
    
	)
	
	(:action enter
		:parameters 
			(?l1 - hallway
			 ?l2 - room)
	    :precondition
			(and (connected ?l1 ?l2) (at ?l1) (unloaded))
		:effect
			(and (not (at ?l1)) (at ?l2))
	)
	
	(:action exit
		:parameters 
			(?l1 - room
			 ?l2 - hallway)
 	    :precondition
 			(and (connected ?l1 ?l2) (at ?l1) (unloaded))
 		:effect
 			(and (not (at ?l1)) (at ?l2))
	)
	
	(:action pickup
		:parameters 
			(?c - cube
			 ?l - location)
	    :precondition
			(and (at ?l) 
				 (in ?c ?l)
				 (unloaded)
				 )
		:effect
			(and (has ?c)
			     (not (unloaded)))
	)
	
	(:action drop
		:parameters 
			(?c - cube
			 ?l - location)
	    :precondition
			(and (at ?l) 
				 (has ?c)
				 )
		:effect
			(and (not (has ?c))
			     (in ?c ?l)
				 (unloaded))
	)
	
	(:action shoot
		:parameters 
			(?p - portal
			 ?oldl - location
			 ?newl - location)
	    :precondition
			(and (at ?newl) 
				 (color ?p)
				 (flatwall ?newl)
				 (open ?p ?oldl)
				 )
		:effect
			(and (not (open ?p ?oldl))
			     (open ?p ?newl))
	)
	
	(:action teleport
		:parameters 
			(?p1 ?p2 - portal
			 ?from ?to - location)
	    :precondition
			(and (at ?from) 
				 (open ?p1 ?from)
				 (open ?p2 ?to)
				 (portal ?p1 ?p2)
				 )
		:effect
			(and (not (at ?from))
			     (at ?to))
	)
)