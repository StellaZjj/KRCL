;;; Problem 1
(define (problem pb1)
	(:domain Robby)
	(:objects
		robby - robot
   		hallway1 hallway2 hallway3 - hallway
   		room1 - room
   		beacon1 - beacon
	)
	(:init
		(at robby hallway1)
		
		(connected hallway1 hallway2)
		(connected hallway2 hallway1)
		(connected hallway2 hallway3)
		(connected hallway3 hallway2)
		(connected hallway2 room1)
		
		(connected room1 hallway2)
		(connected hallway2 room1)
		
		(in beacon1 room1)
	)
   
	(:goal 
		(and (at robby hallway3)
			 (reported beacon1)
		)
	)
)