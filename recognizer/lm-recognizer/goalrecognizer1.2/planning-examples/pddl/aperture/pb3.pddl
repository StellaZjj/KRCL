(define (problem pb3)
  (:domain aperture)
  (:objects
    pbody atlas - robot
    h1 h2 h3 h4 h5 - hallway
    r1 - room
    companion - cube
    red yellow blue purple - color
  )
  (:init
    (at pbody h4)
    (at atlas h5)
    (dropped companion h1)
    (connected h1 h2)
    (connected h2 h3)
    (connected h3 h4)
    (connected h4 r1)
    (connected r1 h5)
    (connected h5 r1)
    (connected r1 h4)
    (connected h4 h3)
    (connected h3 h2)
    (connected h2 h1)
    (ammo pbody red)
    (ammo pbody yellow)
    (ammo atlas blue)
    (ammo atlas purple)
    (portal red yellow)
    (portal yellow red)
    (portal blue purple)
    (portal purple blue)
    (marked red r1)
    (marked yellow r1)
    (marked blue r1)
    (marked purple r1)
    (flatwall h2)
    (flatwall h4)
    (flatwall h5)
  )
  (:goal
    (and
      (dropped companion h5)
    )
  )
)
