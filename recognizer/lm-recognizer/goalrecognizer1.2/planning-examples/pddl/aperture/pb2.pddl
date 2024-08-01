(define (problem pb2)
  (:domain aperture)
  (:objects
    pbody - robot
    up left right - hallway
    middle - room
    companion - cube
    red yellow - color
  )
  (:init
    (at pbody left)
    (dropped companion right)
    (connected left middle)
    (connected middle left)
    (connected middle right)
    (connected right middle)
    (connected middle up)
    (connected up middle)
    (ammo pbody red)
    (ammo pbody yellow)
    (portal red yellow)
    (portal yellow red)
    (marked red middle)
    (marked yellow middle)
    (flatwall left)
    (flatwall right)
    (flatwall up)
  )
  (:goal
    (and
      (dropped companion up)
      (at pbody right)
    )
  )
)
