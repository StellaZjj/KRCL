;;; Problem 2
(define (problem pb2)
	(:domain Robby)
	(:objects
		robby - robot
   		hallway1 hallway2 hallway3 hallway4 - hallway
   		room1 room2 room3 room4 room5 - room
   		beacon1 beacon2 beacon3 beacon4 - beacon
	)
	(:init
		(at robby hallway1)
		
		(connected hallway1 hallway2)
		(connected hallway2 hallway1)
		(connected hallway2 hallway3)
		(connected hallway3 hallway2)
		(connected hallway3 hallway4)
		(connected hallway4 hallway3)
		
		(connected hallway2 room1)
		(connected room1 hallway2)
		
		(connected hallway2 room2)
		(connected room2 hallway2)
		
		(connected hallway2 room3)
		(connected room3 hallway2)
		
		(connected hallway3 room4)
		(connected room4 hallway3)
		
		(connected hallway4 room5)
		(connected room5 hallway4)
		
		(in beacon1 room1)
		(in beacon2 room2)
		(in beacon3 room3)
		(in beacon4 hallway4)
	)
   
	(:goal 
		(and (at robby hallway4)
			 (reported beacon1)
			 (reported beacon2)
			 (reported beacon3)
			 (reported beacon4)
		)
	)
)