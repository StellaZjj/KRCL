(define (domain Robby)
	(:requirements 
	 :typing 
	)
	;;; Type Hierarchy
	(:types 
		location beacon robot - object
		hallway room          - location
	)

	;;; Predicates
	(:predicates 
		(at ?rbt - robot ?loc - location)
		(connected ?loc1 ?loc2  - location)
		(in ?b - beacon ?loc - location)
		(reported ?b - beacon)
	)

	;;; Actions
	(:action move
  		:parameters (?rbt - robot ?from ?to - hallway)
  		:precondition (and (at ?rbt ?from) 
  						   (connected ?from ?to)
  		)
  		:effect (and (not (at ?rbt ?from)) 
            		 (at ?rbt ?to)
      	)
  	)

	(:action exit
  		:parameters (?rbt - robot ?from - room ?to - hallway)
  		:precondition (and (at ?rbt ?from)
  						   (connected ?from ?to)
  		)
  		:effect (and (not (at ?rbt ?from)) 
            		 (at ?rbt ?to)
      )
  )

	(:action enter
  		:parameters (?rbt - robot ?from - hallway ?to - room)
  		:precondition (and (at ?rbt ?from)
  						   (connected ?from ?to)
  		)
  		:effect (and (not (at ?rbt ?from))
            		 (at ?rbt ?to)
      	)
  	) 

	(:action report
  		:parameters (?rbt - robot ?b - beacon ?loc - location)
  		:precondition (and (in ?b ?loc)
  						   (at ?rbt ?loc) 
  		)
  		:effect (and (reported ?b)
      )
  )
)