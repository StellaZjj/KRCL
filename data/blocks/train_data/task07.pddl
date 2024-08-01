(define (problem BW-rand-4-0)
(:domain BLOCKS)
(:objects A B C D - block)
(:INIT
(HANDEMPTY)
(ON A C)
(ONTABLE B)
(ONTABLE C)
(ONTABLE D)
(CLEAR A)
(CLEAR B)
(CLEAR D)
)
(:goal
(AND
(ON A D)
(ON B A))
)
)
