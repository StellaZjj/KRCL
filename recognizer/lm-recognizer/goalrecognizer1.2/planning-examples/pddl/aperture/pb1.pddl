(define (problem pb1)
  (:domain aperture)
  (:objects
    pbody - robot
    left right - hallway
    middle - room
    companion - cube
    red yellow - color
  )
  (:init
    (at pbody left)
    (dropped companion left)
    (connected left middle)
    (connected middle left)
    (connected middle right)
    (connected right middle)
    (ammo pbody red)
    (ammo pbody yellow)
    (portal red yellow)
    (portal yellow red)
    (marked red middle)
    (marked yellow middle)
    (flatwall left)
    (flatwall right)
  )
  (:goal
    (and
      (dropped companion right)
      (at pbody right)
    )
  )
)
