(define (problem BW-rand-4-2)
(:domain BLOCKS)
(:objects A B C D - block)
(:INIT
(HANDEMPTY)
(ONTABLE A)
(ON B C)
(ON C D)
(ONTABLE D)
(CLEAR A)
(CLEAR B)
)
(:goal
(AND
(ON B C)
(ON C D)
(ON D A))
)
)