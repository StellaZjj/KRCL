(define (problem BW-rand-2-0)
(:domain BLOCKS)
(:objects A B - block)
(:INIT
(HANDEMPTY)
(ONTABLE A)
(ONTABLE B)
(CLEAR A)
(CLEAR B)
)
(:goal
(AND
(ON B A))
)
)
