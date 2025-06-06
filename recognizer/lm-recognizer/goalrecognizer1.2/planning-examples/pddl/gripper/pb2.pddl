(define (problem pb2)
(:domain gripper)
(:objects robot1 robot2 - robot
rgripper1 lgripper1 rgripper2 lgripper2 - gripper
room1 room2 room3 room4 room5 - room
ball1 ball2 ball3 ball4 - object)
(:init
(at_robby robot1 room1)
(free robot1 rgripper1)
(free robot1 lgripper1)
(at_robby robot2 room1)
(free robot2 rgripper2)
(free robot2 lgripper2)
(at ball1 room4)
(at ball2 room3)
(at ball3 room3)
(at ball4 room2)
)
(:goal
(and
(at ball1 room1)
(at ball2 room4)
(at ball3 room4)
(at ball4 room5)
)
)
)