(define (problem BW-rand-2-1)
(:domain BLOCKS)
(:objects A B - block)
(:INIT
(HANDEMPTY)
(ON A B)
(ONTABLE B)
(CLEAR A)
)
(:goal
(AND
(ON A B))
)
)
