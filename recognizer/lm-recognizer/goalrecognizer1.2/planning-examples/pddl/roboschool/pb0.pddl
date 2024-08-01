(define (problem pb2)
    (:domain roboschool)
    (:requirements :strips :typing :negative-preconditions)
    (:objects p1 p2 p3 p4 p5 p6 p7 - piece
              b1 b2 b3 - bin
              roomA_0 roomA_1 roomA_2 roomA_3 roomA_4 - room
              roomB_0 roomB_1 roomB_2 roomB_3 roomB_4 - room
              roomC_0 roomC_1 roomC_2 roomC_3 roomC_4 - room
              roomD_0 roomD_1 roomD_2 roomD_3 roomD_4 - room
              roomE_0 roomE_1 roomE_2 roomE_3 roomE_4 - room
              )
    
    
    (:init 
		(connected roomB_2 roomB_3)
		(connected roomB_3 roomB_2)
		(at roomB_3)
    )
    
    ;(:goal (in p3 b1) (in p4 b1)) ; All triangles in b1
    (:goal (and (at roomB_2))) ; All triangles in b1
)