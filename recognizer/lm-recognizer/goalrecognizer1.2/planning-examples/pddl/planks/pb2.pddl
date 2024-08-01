(define (problem pb2)
  (:domain planks)

  (:requirements :strips)

  (:objects
    bob
    px1y2
    px2y2
    px3y2
    p1
  )

  (:init
    (agent bob)
    (plank p1)
    (light bob)
    (at bob px2y2)
    (empty px1y2)
    (empty px3y2)
    (adjacent px1y2 px2y2)
    (adjacent px2y2 px1y2)
    (adjacent px2y2 px3y2)
    (adjacent px3y2 px2y2)
    (bridge px1y2 p1 px2y2)
    (bridge px2y2 p1 px1y2)
  )

  (:goal
    (and
      (bridge px3y2 p1 px2y2)
    )
  )
)