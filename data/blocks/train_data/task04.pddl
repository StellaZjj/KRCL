(define (problem BW-rand-3-0)
(:domain BLOCKS)
(:objects A B C - block)
(:INIT
(HANDEMPTY)
(ONTABLE A)
(ON B A)
(ONTABLE C)
(CLEAR B)
(CLEAR C)
)
(:goal
(AND
(ON B C)
(ON C A))
)
)