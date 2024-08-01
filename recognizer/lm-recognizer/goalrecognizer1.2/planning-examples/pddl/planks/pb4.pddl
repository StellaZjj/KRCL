(define (problem pb4)
  (:domain planks)

  (:requirements :strips)

  (:objects
    bob
    ana
    px1y2
    px2y2
    px3y2
    px2y1
    p1
    p2
  )

  (:init
    (agent bob)
    (agent ana)
    (plank p1)
    (plank p2)
    (light bob)
    (light ana)
    (at bob px1y2)
    (at ana px2y2)
    (empty px3y2)
    (empty px2y1)
    (adjacent px1y2 px2y2)
    (adjacent px2y2 px1y2)
    (adjacent px2y2 px3y2)
    (adjacent px3y2 px2y2)
    (adjacent px2y2 px2y1)
    (adjacent px2y1 px2y2)
    (bridge px2y2 p1 px3y2)
    (bridge px3y2 p1 px2y2)
    (bridge px2y2 p2 px2y1)
    (bridge px2y1 p2 px2y2)
  )

  (:goal
    (and
      (at bob px3y2)
      (at ana px1y2)
    )
  )
)