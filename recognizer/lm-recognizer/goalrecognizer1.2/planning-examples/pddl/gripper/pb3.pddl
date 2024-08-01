;;PAPER EXAMPLE
(define (problem pb3)
(:domain gripper)
(:objects 
	robot1 - robot
	left right - gripper
	roomA roomB - room
	ball1 ball2 ball3 ball4 - object)
(:init
	(at_robby robot1 roomA)
	(free robot1 left)
	(free robot1 right)
	(at ball1 roomA)
	(at ball2 roomA)
	(at ball3 roomA)
	(at ball4 roomA)
)
(:goal
(and
	(at ball1 roomB)
	(at ball2 roomB)
	(at ball3 roomB)
	(at ball4 roomB)
	(at_robby robot1 roomB)
)
))