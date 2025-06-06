(define (problem pb16)
  (:domain rush)
  (:requirements :strips :negative-preconditions)
  (:objects 0 1 2 3 4 5 n x a b c d e f g o p q)
  (:init
    (near 0 1)
    (near 1 0)
    (near 1 2)
    (near 2 1)
    (near 2 3)
    (near 3 2)
    (near 3 4)
    (near 4 3)
    (near 4 5)
    (near 5 4)
    (equal 0 0)
    (equal 1 1)
    (equal 2 2)
    (equal 3 3)
    (equal 4 4)
    (equal 5 5)
    (car x)   (horizontal x 2)
    (car a)   (horizontal a 0)
    (car b)   (horizontal b 0)
    (car c)     (vertical c 4)
    (car d)     (vertical d 0)
    (car e)   (horizontal e 1)
    (car f)     (vertical f 1)
    (car g)   (horizontal g 5)
    (truck o)   (vertical o 5)
    (truck p)   (vertical p 2)
    (truck q) (horizontal q 3)
    (pos 0 0 a) (pos 1 0 a) (pos 2 0 b) (pos 3 0 b) (pos 4 0 c) (pos 5 0 o)
    (pos 0 1 d) (pos 1 1 n) (pos 2 1 e) (pos 3 1 e) (pos 4 1 c) (pos 5 1 o)
    (pos 0 2 d) (pos 1 2 f) (pos 2 2 p) (pos 3 2 x) (pos 4 2 x) (pos 5 2 o)
    (pos 0 3 n) (pos 1 3 f) (pos 2 3 p) (pos 3 3 q) (pos 4 3 q) (pos 5 3 q)
    (pos 0 4 n) (pos 1 4 n) (pos 2 4 p) (pos 3 4 n) (pos 4 4 n) (pos 5 4 n)
    (pos 0 5 g) (pos 1 5 g) (pos 2 5 n) (pos 3 5 n) (pos 4 5 n) (pos 5 5 n)
  )
  (:goal
    (and (pos 5 2 x))
  )
)