(define (problem BW-rand-3-2)
(:domain BLOCKS)
(:objects A B C - block)
(:INIT
(HANDEMPTY)
(ONTABLE A)
(ONTABLE B)
(ONTABLE C)
(CLEAR A)
(CLEAR B)
(CLEAR C)
)
(:goal
(AND
(ON C A))
)
)