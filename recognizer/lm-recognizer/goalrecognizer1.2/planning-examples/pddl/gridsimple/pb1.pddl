(define (problem pb1)
(:domain gridsimple)
(:objects
	p0_0 p1_0 p2_0 p0_1 p1_1 p2_1 p0_2 p1_2 p2_2 - place
)
(:init
	(connected p0_0 p1_0)
	(connected p1_0 p2_0)
	(connected p0_1 p1_1)
	(connected p1_1 p2_1)
	(connected p0_2 p1_2)
	(connected p1_2 p2_2)
	(connected p0_0 p0_1)
	(connected p1_0 p1_1)
	(connected p2_0 p2_1)
	(connected p0_1 p0_2)
	(connected p1_1 p1_2)
	(connected p2_1 p2_2)
	(connected p1_0 p0_0)
	(connected p2_0 p1_0)
	(connected p1_1 p0_1)
	(connected p2_1 p1_1)
	(connected p1_2 p0_2)
	(connected p2_2 p1_2)
	(connected p0_1 p0_0)
	(connected p1_1 p1_0)
	(connected p2_1 p2_0)
	(connected p0_2 p0_1)
	(connected p1_2 p1_1)
	(connected p2_2 p2_1)
	(at p0_0)
)
(:goal
	(and (at p2_2))
))