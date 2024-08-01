(define (problem BW-rand-3-1)
(:domain BLOCKS)
(:objects A B C - block)
(:INIT
(HANDEMPTY)
(ON A C)
(ON B A)
(ONTABLE C)
(CLEAR B)
)
(:goal
(AND
(ON A C)
(ON B A))
)
)