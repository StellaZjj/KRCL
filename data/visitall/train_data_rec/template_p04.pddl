(define (problem grid-4)
(:domain grid-visit-all)
(:objects
        loc-x0-y0
        loc-x0-y1
        loc-x0-y2
        loc-x0-y3
        loc-x1-y0
        loc-x1-y1
        loc-x1-y2
        loc-x1-y3
        loc-x2-y0
        loc-x2-y1
        loc-x2-y2
        loc-x2-y3
        loc-x3-y0
        loc-x3-y1
        loc-x3-y2
        loc-x3-y3
- place

)
(:init
        (at-robot loc-x3-y2)
        (visited loc-x3-y2)
        (connected loc-x0-y0 loc-x1-y0)
        (connected loc-x0-y0 loc-x0-y1)
        (connected loc-x0-y1 loc-x1-y1)
        (connected loc-x0-y1 loc-x0-y0)
        (connected loc-x0-y1 loc-x0-y2)
        (connected loc-x0-y2 loc-x1-y2)
        (connected loc-x0-y2 loc-x0-y1)
        (connected loc-x0-y2 loc-x0-y3)
        (connected loc-x0-y3 loc-x1-y3)
        (connected loc-x0-y3 loc-x0-y2)
        (connected loc-x1-y0 loc-x0-y0)
        (connected loc-x1-y0 loc-x2-y0)
        (connected loc-x1-y0 loc-x1-y1)
        (connected loc-x1-y1 loc-x0-y1)
        (connected loc-x1-y1 loc-x2-y1)
        (connected loc-x1-y1 loc-x1-y0)
        (connected loc-x1-y1 loc-x1-y2)
        (connected loc-x1-y2 loc-x0-y2)
        (connected loc-x1-y2 loc-x2-y2)
        (connected loc-x1-y2 loc-x1-y1)
        (connected loc-x1-y2 loc-x1-y3)
        (connected loc-x1-y3 loc-x0-y3)
        (connected loc-x1-y3 loc-x2-y3)
        (connected loc-x1-y3 loc-x1-y2)
        (connected loc-x2-y0 loc-x1-y0)
        (connected loc-x2-y0 loc-x3-y0)
        (connected loc-x2-y0 loc-x2-y1)
        (connected loc-x2-y1 loc-x1-y1)
        (connected loc-x2-y1 loc-x3-y1)
        (connected loc-x2-y1 loc-x2-y0)
        (connected loc-x2-y1 loc-x2-y2)
        (connected loc-x2-y2 loc-x1-y2)
        (connected loc-x2-y2 loc-x3-y2)
        (connected loc-x2-y2 loc-x2-y1)
        (connected loc-x2-y2 loc-x2-y3)
        (connected loc-x2-y3 loc-x1-y3)
        (connected loc-x2-y3 loc-x3-y3)
        (connected loc-x2-y3 loc-x2-y2)
        (connected loc-x3-y0 loc-x2-y0)
        (connected loc-x3-y0 loc-x3-y1)
        (connected loc-x3-y1 loc-x2-y1)
        (connected loc-x3-y1 loc-x3-y0)
        (connected loc-x3-y1 loc-x3-y2)
        (connected loc-x3-y2 loc-x2-y2)
        (connected loc-x3-y2 loc-x3-y1)
        (connected loc-x3-y2 loc-x3-y3)
        (connected loc-x3-y3 loc-x2-y3)
        (connected loc-x3-y3 loc-x3-y2)

)
(:goal (and
<HYPOTHESIS>
))
)
