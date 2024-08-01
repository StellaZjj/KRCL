(define (problem BW-rand-5-1)
(:domain BLOCKS)
(:objects A B C D E - block)
(:INIT
(HANDEMPTY)
(ONTABLE A)
(ON B A)
(ON C D)
(ONTABLE D)
(ON E C)
(CLEAR B)
(CLEAR E)
)
(:goal (and
<HYPOTHESIS>
))
)
