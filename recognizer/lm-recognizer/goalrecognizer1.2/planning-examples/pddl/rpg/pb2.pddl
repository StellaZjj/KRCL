;;; Problem 2
(define (problem pb2)
    (:domain RPG)
    (:objects
        room1 room2 room3 room4 room5 room6 room7 room8 room9 room10 room11 room12 sword1 sword2 monster1 monster2 monster3 trap1 trap2 trap3 trap4 trap5 ; use empty object if constant is not supported
        empty
    )
    (:init
        (at room12)
        (connected room1 room2) (connected room1 room7)
        (connected room2 room1) (connected room2 room3) (connected room2 room8)
        (connected room3 room2) (connected room3 room7) (connected room3 room4) (connected room3 room9)
        (connected room4 room3) (connected room4 room8) (connected room4 room5) (connected room4 room10)
        (connected room5 room4) (connected room5 room9) (connected room5 room6) (connected room5 room11) 
        (connected room6 room5) (connected room6 room10) (connected room6 room12)
        (connected room7 room1) (connected room7 room3) (connected room7 room8)
        (connected room8 room2) (connected room8 room7) (connected room8 room4) (connected room8 room9)
        (connected room9 room8) (connected room9 room3) (connected room9 room5) (connected room9 room10)
        (connected room10 room9) (connected room10 room4) (connected room10 room6) (connected room10 room11)
        (connected room11 room10) (connected room11 room5) (connected room11 room12)
        (connected room12 room6) (connected room12 room11) 
        
        
        (armed room2) (armed room3) (armed room7) (armed room10) (armed room11)
        (in room1 empty)
        (in room2 trap1)
        (in room3 trap2)
        (in room4 monster1)
        (in room5 monster2)
        (in room6 sword1)
        (in room7 trap3)
        (in room8 monster3)
        (in room9 sword2)
        (in room10 trap4)
        (in room11 trap5)
        
        (sword sword1) (sword sword2)
        (room room1) (room room2) (room room3) (room room4) (room room5) (room room6) (room room7) (room room8) (room room9) (room room10) (room room11) (room room12)
        (monster monster1)
        (monster monster2)
        (monster monster3)
        (trap trap1)
        (trap trap2)
        (trap trap3)
        (trap trap4)
        (trap trap5)
        (handempty)
    )
   
    (:goal 
        (and (at room1))
    )
)