(define (problem BW-rand-5-0)
(:domain BLOCKS)
(:objects A B C D E - block)
(:INIT
(HANDEMPTY)
(ON A E)
(ON B D)
(ONTABLE C)
(ONTABLE D)
(ONTABLE E)
(CLEAR A)
(CLEAR B)
(CLEAR C)
)
(:goal
(AND
(ON A D)
(ON E A))
)
)
