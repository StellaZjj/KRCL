(define (domain RPG)
  (:requirements :strips :negative-preconditions)
  (:constants empty)
  (:predicates
    (at ?room)
    (armed ?room)
    (connected ?room1 ?room2)
    (handempty)
    (holding ?sword)
    (in ?room ?thing)
    (destroyed ?room)
    ; types
    (room ?room)
    (sword ?sword)
    (trap ?trap)
    (monster ?monster)
  )

  ; Move from one room to another with sword
  (:action move-with-sword
    :parameters (?room1 ?room2 ?monster)
    :precondition (and
      (room ?room1)
      (room ?room2)
      (monster ?monster)
      (connected ?room1 ?room2)
      (at ?room1)
      (not (destroyed ?room2))
      (not (armed ?room1))
      (in ?room2 ?monster)
      (not (handempty))
    )
    :effect (and
      (destroyed ?room1)
      (not (at ?room1))
      (at ?room2)
    )
  )

  ; Move from one room to another
  (:action move
    :parameters (?room1 ?room2 ?thing)
    :precondition (and
      (room ?room1)
      (room ?room2)
      (connected ?room1 ?room2)
      (at ?room1)
      (not (destroyed ?room2))
      (not (armed ?room1))
      (not (monster ?thing))
      (in ?room2 ?thing)
    )
    :effect (and
      (destroyed ?room1)
      (not (at ?room1))
      (at ?room2)
    )
  )

  ; Pick sword present in room
  (:action pickup
    :parameters (?sword ?room)
    :precondition (and
      (sword ?sword)
      (room ?room)
      (handempty)
      (in ?room ?sword)
      (at ?room)
    )
    :effect (and
      (holding ?sword)
      (not (in ?room ?sword))
      (not (handempty))
    )
  )

  ; Destroy sword to obtain empty-hands
  (:action destroy
    :parameters (?sword ?room ?thing)
    :precondition (and
      (sword ?sword)
      (room ?room)
      (at ?room)
      (holding ?sword)
      (not (armed ?room))
      (in ?room ?thing)
      (not (monster ?thing))
    )
    :effect (and
      (not (holding ?sword))
      (handempty)
    )
  )

  ; Disarm trap before leaving the room
  (:action disarm
    :parameters (?room ?trap)
    :precondition (and
      (room ?room)
      (trap ?trap)
      (handempty)
      (at ?room)
      (armed ?room)
    )
    :effect (and
      (not (armed ?room))
    )
  )
)