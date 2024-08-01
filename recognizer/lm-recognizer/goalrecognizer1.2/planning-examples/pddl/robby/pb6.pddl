;;; Problem 6
(define (problem pb6)
	(:domain Robby)
	(:objects
		robby - robot
   		hallway1 hallway2 hallway3 hallway4 - hallway
	)
	(:init
		(at robby hallway1)
		
		(connected hallway1 hallway2)
		(connected hallway2 hallway1)
		(connected hallway2 hallway3)
		(connected hallway3 hallway2)
		(connected hallway3 hallway4)
		(connected hallway4 hallway3)
	)
   
	(:goal 
		(and (at robby hallway4))
	)
)