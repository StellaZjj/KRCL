(define (problem blocks_words)
	(:domain blocks)
(:objects 

A B D E R S - block
)
(:init
(HANDEMPTY)
(CLEAR S) (ONTABLE S) (CLEAR R) (ONTABLE R) (CLEAR D) (ON D B) (ONTABLE B) (CLEAR E) (ON E A) (ONTABLE A)
)
(:goal (and
;(ONTABLE D) (ON E D) (CLEAR B) (ON B E)
;(ONTABLE D) (ON A D) (CLEAR S) (ON S A)
(ONTABLE D) (ON E D) (CLEAR R) (ON R E)
))
)
