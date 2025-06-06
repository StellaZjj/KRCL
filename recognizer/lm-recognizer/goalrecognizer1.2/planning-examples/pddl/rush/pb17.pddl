(define (problem pb17)
  (:domain rush)
  (:requirements :strips :negative-preconditions)
  (:objects 0 1 2 3 4 5 n x a b c d e f g o p q r)
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
    (car c)   (horizontal c 1)
    (car d)     (vertical d 2)
    (car e)   (horizontal e 3)
    (car f)     (vertical f 4)
    (car g)     (vertical g 5)
    (truck o) (horizontal o 0)
    (truck p)   (vertical p 3)
    (truck q) (horizontal q 4)
    (truck r) (horizontal r 5)
    (pos 0 0 a) (pos 1 0 o) (pos 2 0 o) (pos 3 0 o) (pos 4 0 n) (pos 5 0 n)
    (pos 0 1 a) (pos 1 1 n) (pos 2 1 b) (pos 3 1 b) (pos 4 1 c) (pos 5 1 c)
    (pos 0 2 x) (pos 1 2 x) (pos 2 2 d) (pos 3 2 n) (pos 4 2 n) (pos 5 2 n)
    (pos 0 3 e) (pos 1 3 e) (pos 2 3 d) (pos 3 3 p) (pos 4 3 n) (pos 5 3 n)
    (pos 0 4 q) (pos 1 4 q) (pos 2 4 q) (pos 3 4 p) (pos 4 4 f) (pos 5 4 g)
    (pos 0 5 r) (pos 1 5 r) (pos 2 5 r) (pos 3 5 p) (pos 4 5 f) (pos 5 5 g)
  )
  (:goal
    (and (pos 5 2 x))
  )
)