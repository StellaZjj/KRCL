;;; Problem 3
(define (problem pb3)
	(:domain Robby)
	(:objects
		robby - robot
   		hallway1 hallway2 hallway3 hallway4 hallway5 hallway6 hallway7 hallway8 - hallway
   		room1 room2 room3 room4 - room
   		beacon1 beacon2 beacon3 beacon4 beacon5 - beacon
	)
	(:init
		(at robby hallway1)
		
		(connected hallway1 hallway2)
		(connected hallway2 hallway1)
		(connected hallway1 hallway3)
		(connected hallway3 hallway1)

		(connected hallway1 room1)
		(connected room1 hallway1)
		(connected hallway3 room1)
		(connected room1 hallway3)
		
		(connected hallway2 hallway4)
		(connected hallway4 hallway2)
		(connected hallway4 room2)
		(connected room2 hallway4)
		(connected hallway4 room3)
		(connected room3 hallway4)
		
		(connected hallway3 hallway5)
		(connected hallway5 hallway3)
		(connected hallway5 room2)
		(connected room2 hallway5)
		
		(connected hallway4 hallway6)
		(connected hallway6 hallway4)
		
		(connected hallway5 hallway6)
		(connected hallway6 hallway5)		
		
		(connected hallway6 hallway7)
		(connected hallway7 hallway6)
		
		(connected hallway7 room4)
		(connected room4 hallway7)
		
		(connected hallway7 hallway8)
		(connected hallway8 hallway7)		
		
		(in beacon1 room1)
		(in beacon2 hallway2)
		(in beacon3 room3)
		(in beacon4 hallway5)
		(in beacon5 room4)
	)
   
	(:goal 
		(and (at robby hallway8)
			 (reported beacon1)
			 (reported beacon2)
			 (reported beacon3)
			 (reported beacon4)
			 (reported beacon5)
		)
	)
)