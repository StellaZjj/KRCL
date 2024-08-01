;;; Problem 4
;;; Author: Ramon
(define (problem pb4)
	(:domain Robby)
	(:objects
		robby - robot
   		hallway1 hallway2 path1_hallway3 path1_hallway4 path1_hallway5 path1_hallway6 path1_hallway7 path2_hallway8 path2_hallway9 path2_hallway10 path2_hallway11 path2_hallway12 - hallway
   		path1_room1 path1_room2 path1_room3 path2_room4 path2_room5 path2_room6 - room
   		beacon1 path1_beacon2 path1_beacon3 path1_beacon4 path2_beacon5 path2_beacon6 path2_beacon7 path2_beacon8 - beacon
	)
	(:init
		(at robby hallway1)
		
		(connected hallway1 hallway2)
		(connected hallway2 hallway1)
		
		;;; Path1
		(connected hallway2 path1_hallway3)
		(connected path1_hallway3 hallway2)
		
		(connected path1_hallway3 path1_room1)
		(connected path1_room1 path1_hallway3)
		
		(connected path1_hallway3 path1_hallway4)
		(connected path1_hallway4 path1_hallway3)

		(connected path1_hallway4 path1_room2)
		(connected path1_room2 path1_hallway4)
		
		(connected path1_room2 path1_hallway5)
		(connected path1_hallway5 path1_room2)
		
		(connected path1_hallway5 path1_hallway6)
		(connected path1_hallway6 path1_hallway5)	
		
		(connected path1_hallway6 path1_room3)
		(connected path1_room3 path1_hallway6)
		
		(connected path1_hallway7 path1_room3)
		(connected path1_room3 path1_hallway7)
		
		;;; Path2
		
		(connected hallway2 path2_hallway8)
		(connected path2_hallway8 hallway2)
		
		(connected path2_hallway8 path2_room4)
		(connected path2_room4 path2_hallway8)	

		(connected path2_hallway8 path2_hallway9)
		(connected path2_hallway9 path2_hallway8)
		
		(connected path2_hallway9 path2_room5)
		(connected path2_room5 path2_hallway9)
		
		(connected path2_room5 path2_hallway10)
		(connected path2_hallway10 path2_room5)		
		
		(connected path2_hallway10 path2_hallway11)
		(connected path2_hallway11 path2_hallway10)
		
		(connected path2_hallway11 path2_room6)
		(connected path2_room6 path2_hallway11)
		
		(connected path2_hallway12 path2_room6)
		(connected path2_room6 path2_hallway12)	
		
		;;; Beacons
		
		(in beacon1 hallway2)
		(in path1_beacon2 path1_hallway3)
		(in path1_beacon3 path1_room2)
		(in path1_beacon4 path1_hallway6)
		(in path2_beacon5 path2_room4)
		(in path2_beacon6 path2_hallway10)
		(in path2_beacon7 path2_room6)
		(in path2_beacon8 path2_hallway12)			
	)
   
	(:goal 
		(and (at robby path1_hallway7)
			 (reported beacon1)
			 (reported path1_beacon2)
			 (reported path1_beacon3)
			 (reported path1_beacon4)
			 (reported path2_beacon5)
			 (reported path2_beacon6)
			 (reported path2_beacon7)
			 (reported path2_beacon8)
		)
	)
)