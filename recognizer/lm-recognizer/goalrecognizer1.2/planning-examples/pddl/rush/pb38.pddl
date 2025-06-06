(define (problem pb38)
  (:domain rush)
  (:requirements :strips :negative-preconditions)
  (:objects 0 1 2 3 4 5 n x a b c d e f g o q r)
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
    (car a)     (vertical a 0)
    (car b)   (horizontal b 1)
    (car c)     (vertical c 3)
    (car d)     (vertical d 2)
    (car e)   (horizontal e 3)
    (car f)     (vertical f 2)
    (car g)   (horizontal g 4)
    (truck o) (horizontal o 0)
    (truck q) (horizontal q 5)
    (truck r)   (vertical r 5)
    (pos 0 0 a) (pos 1 0 n) (pos 2 0 n) (pos 3 0 o) (pos 4 0 o) (pos 5 0 o)
    (pos 0 1 a) (pos 1 1 b) (pos 2 1 b) (pos 3 1 c) (pos 4 1 n) (pos 5 1 n)
    (pos 0 2 x) (pos 1 2 x) (pos 2 2 d) (pos 3 2 c) (pos 4 2 n) (pos 5 2 r)
    (pos 0 3 n) (pos 1 3 n) (pos 2 3 d) (pos 3 3 e) (pos 4 3 e) (pos 5 3 r)
    (pos 0 4 n) (pos 1 4 n) (pos 2 4 f) (pos 3 4 g) (pos 4 4 g) (pos 5 4 r)
    (pos 0 5 n) (pos 1 5 n) (pos 2 5 f) (pos 3 5 q) (pos 4 5 q) (pos 5 5 q)
  )
  (:goal
    (and (pos 5 2 x))
  )
)