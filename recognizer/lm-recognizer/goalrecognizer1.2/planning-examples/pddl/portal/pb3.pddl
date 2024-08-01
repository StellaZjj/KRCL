(define (problem pb3)
	(:domain portal)
	(:objects 
		room1 - room
		room2 - room
		room3 - room
		room4 - room
		hall1 - hallway
		hall2 - hallway
		hall3 - hallway
		hall4 - hallway
		hall5 - hallway
		hall6 - hallway
		hall7 - hallway
		hall8 - hallway
		hall9 - hallway
		c1 - cube
		c2 - cube
		c3 - cube
		c4 - cube
		c5 - cube
		c6 - cube
		red blue - portal
		)
	(:init (at hall1)
		   (in c1 hall4)
		   (in c2 room2)
		   ;(in c3 room3)
		   (in c4 hall5)
		   ;(in c5 room4)
		   (unloaded)
		   
		   (color blue)
		   (portal red blue)
		   (portal blue red)
		   
		   (open red hall1)
		   (open blue hall1)
		   
		   (flatwall room1)
		   (flatwall room2)
		   (flatwall room3)
		   (flatwall room4)
		   (flatwall hall4)
		   (flatwall hall5)
		   (flatwall hall7)
		   (flatwall hall9)
		   
		   (connected room1 hall1)
   		   (connected hall1 room1)
		   (connected room1 hall2)
   		   (connected hall2 room1)
		   ; 
		   (connected room2 hall4)
		   (connected hall4 room2)
		   (connected room2 hall5)
		   (connected hall5 room2)
		   ; 
		   (connected room3 hall7)
		   (connected hall7 room3)
		   ;
		   (connected room4 hall8)
		   (connected hall8 room4)
		   ; Up
		   (connected hall1 hall2)
		   (connected hall2 hall1)
		   (connected hall2 hall4)
		   (connected hall4 hall2)
		   ; Down
		   (connected hall1 hall3)
		   (connected hall3 hall1)
		   (connected hall3 hall5)
		   (connected hall5 hall3)
		   ; Merge
		   (connected hall5 hall6)
		   (connected hall6 hall5)
		   (connected hall4 hall6)
		   (connected hall6 hall4)
		   ; Left
		   (connected hall6 hall7)
		   (connected hall7 hall6)
		   ;Right
		   (connected hall6 hall8)
		   (connected hall8 hall6)
		   (connected hall8 hall9)
		   (connected hall9 hall8)
		)
	(:goal
		(and (in c1 hall9) (in c2 hall9) ;(in c3 hall9) 
			(in c4 hall9) ;(in c5 hall9) 
			(at hall9))
		)
)