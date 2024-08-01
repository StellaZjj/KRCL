(define (problem pb0)
	(:domain Robby)
	(:objects
		robby - robot
   		hall1 hall2 hall3 - hallway
   		b1 - beacon
	)
	(:init
		(at robby hall1)
		(connected hall1 hall2)
		(connected hall2 hall1)
		(connected hall2 hall3)
		(connected hall3 hall2)
		(in b1 hall2)
	)
   
	(:goal 
		(and (at robby hall3)
			 (reported b1)
		)
	)
)