(define (problem pb1)
	(:domain healthcare)
	(:objects
		carer grandpa - person
   		room1 - room
   		kitchen1 - kitchen
   		living-room1 - living-room
   		toilet1 - toilet
   		bathroom1 - bathroom
	)
	(:init
		(at carer kitchen1)
		(at grandpa bathroom1)
		(adjacent room1 bathroom1)
		(adjacent bathroom1 room1)
   		(adjacent room1 living-room1)
   		(adjacent living-room1 room1)
   		(adjacent living-room1 kitchen1)
   		(adjacent kitchen1 living-room1)
   		(adjacent living-room1 toilet1)
   		(adjacent toilet1 living-room1)
	)
	(:goal 
		(and (at carer bathroom1))
	)
)