;;; Problem 1
(define (problem pb1)
    (:domain RPG)
    (:objects
        room1 room2 room3 room4 room5 room6 room7 room8 sword1 monster1 monster2 trap1 ; use empty object if constant is not supported
        empty
    )
    (:init
        (at room8)
        (armed room2) 
        (connected room1 room2)
        (connected room2 room1) (connected room2 room3) (connected room2 room5)
        (connected room3 room2) (connected room3 room4) (connected room3 room6)
        (connected room4 room3) (connected room4 room7) (connected room4 room8)
        (connected room5 room2) (connected room5 room6)
        (connected room6 room3) (connected room6 room5) (connected room6 room7)
        (connected room7 room4) (connected room7 room6) (connected room7 room8)
        (connected room8 room4) (connected room8 room7)
        
        (armed room2)
        (in room1 empty)
        (in room2 trap1)
        (in room3 monster1)
        (in room4 sword1)
        (in room5 empty)
        (in room6 empty)
        (in room7 monster2)
        
        (sword sword1)
        (room room1) (room room2) (room room3) (room room4) (room room5) (room room6) (room room7) (room room8)
        (monster monster1)
        (monster monster2)
        (trap trap1)
        (handempty)
    )
   
    (:goal 
        (and (at room1))
    )
)