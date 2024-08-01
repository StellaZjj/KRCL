;;; Problem 5
;;; Author: Ramon
(define (problem pb5)
	(:domain Robby)
	(:objects
		robby - robot
   		hallway1 hallway2 path1_hallway3 path1_hallway4 path1_hallway5 path1_hallway6 path1_hallway7 path1_hallway8 path1_hallway9 path1_hallway10 path1_hallway11 path2_hallway12 path2_hallway13 path2_hallway14 path2_hallway15 - hallway
   		room1 room2 path1_room3 path1_room4 path1_room5 path1_room6 path1_room7 path1_room8 path1_room9 path2_room10 path2_room11 path2_room12 - room
   		beacon1 path1_beacon2 path1_beacon3 path1_beacon4 path1_beacon5 path1_beacon6 path2_beacon7 path2_beacon8 path2_beacon9 path2_beacon10 - beacon
	)
	(:init
		(at robby hallway1)
		
		(connected hallway1 hallway2)
		(connected hallway2 hallway1)
		
		(connected hallway2 room1)
		(connected room1 hallway2)
		
		(connected hallway2 room2)
		(connected room2 hallway2)		
		
		;;; Path1
		
		(connected room1 path1_hallway3)
		(connected path1_hallway3 room1)

		(connected path1_hallway3 path1_room3)
		(connected path1_room3 path1_hallway3)
		
		(connected path1_hallway4 path1_hallway3)
		(connected path1_hallway3 path1_hallway4)
		
		(connected path1_hallway4 path1_room4)
		(connected path1_room4 path1_hallway4)
		
		(connected path1_room4 path1_hallway5)
		(connected path1_hallway5 path1_room4)
				
		(connected path1_room4 path1_hallway6)
		(connected path1_hallway6 path1_room4)
		
		(connected path1_hallway6 path1_hallway7)
		(connected path1_hallway7 path1_hallway6)

		(connected path1_hallway7 path1_room5)
		(connected path1_room5 path1_hallway7)
		
		(connected path1_room5 path1_hallway8)
		(connected path1_hallway8 path1_room5)		
		
		(connected path1_hallway8 path1_room6)
		(connected path1_room6 path1_hallway8)
		
		(connected path1_hallway8 path1_hallway9)
		(connected path1_hallway9 path1_hallway8)
		
		(connected path1_hallway9 path1_hallway10)
		(connected path1_hallway10 path1_hallway9)
		
		(connected path1_hallway10 path1_room9)
		(connected path1_room9 path1_hallway10)		
		
		(connected path1_hallway9 path1_room7)
		(connected path1_room7 path1_hallway9)
		
		(connected path1_hallway9 path1_room8)
		(connected path1_room8 path1_hallway9)

		(connected path1_room8 path1_hallway11)		
		(connected path1_hallway11 path1_room8)
		
		;;; Path2

		(connected room2 path2_hallway12)
		(connected path2_hallway12 room2)

		(connected path2_hallway13 path2_hallway12)
		(connected path2_hallway12 path2_hallway13)		
	
		(connected path2_hallway13 path2_room10)
		(connected path2_room10 path2_hallway13)
		
		(connected path2_hallway13 path2_hallway14)
		(connected path2_hallway14 path2_hallway13)
		
		(connected path2_hallway14 path2_room11)
		(connected path2_room11 path2_hallway14)
		
		(connected path2_room11 path2_hallway15)
		(connected path2_hallway15 path2_room11)
		
		(connected path2_hallway15 path2_room12)
		(connected path2_room12 path2_hallway15)								
		
		;;; Beacons
		
		(in beacon1 hallway2)
		(in path1_beacon2 path1_room4)
		(in path1_beacon3 path1_room5)
		(in path1_beacon4 path1_room6)
		(in path1_beacon5 path1_room7)
		(in path1_beacon6 path1_room9)
		
		(in path2_beacon7 path2_hallway12)
		(in path2_beacon8 path2_room10)
		(in path2_beacon9 path2_hallway14)
		(in path2_beacon10 path2_hallway15)
	)
   
	(:goal 
		(and (at robby path1_hallway11)
			 (reported path1_beacon2)
			 (reported path1_beacon3)
			 (reported path1_beacon4)
			 (reported path1_beacon5)
			 (reported path1_beacon6)
			 (reported path2_beacon7)
			 (reported path2_beacon8)
			 (reported path2_beacon9)
			 (reported path2_beacon10)
		)
	)
)