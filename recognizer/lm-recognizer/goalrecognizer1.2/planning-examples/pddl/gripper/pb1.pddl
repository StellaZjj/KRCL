(define (problem pb1)
(:domain gripper)
(:objects 
	robot1 - robot
	lgripper1 rgripper1 - gripper
	room1 room2 room3 room4 - room
	ball1 ball2 ball3 ball4 - object)
(:init
	(at_robby robot1 room1)
	(free robot1 rgripper1)
	(free robot1 lgripper1)
	(at ball1 room1)
	(at ball2 room4)
	(at ball3 room2)
	(at ball4 room3)
)
(:goal
(and
	(at ball1 room1)
	(at ball2 room1)
	(at ball3 room3)
	(at ball4 room3)
)
))