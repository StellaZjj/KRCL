(define (problem pb0)
   (:domain blocksworld)
   (:objects a b c d)
   (:init (onTable a) (clear a) (onTable b) (clear b) (onTable c) (on d c) (clear d))
   (:goal (and (on c a) (on b d)))
)