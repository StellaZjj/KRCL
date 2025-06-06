(define (problem pb26)
  (:domain rush)
  (:requirements :strips :negative-preconditions)
  (:objects 0 1 2 3 4 5 n x a b c d e f g h o p r)
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
    (car a)     (vertical a 1)
    (car b)     (vertical b 0)
    (car c)     (vertical c 3)
    (car d)     (vertical d 5)
    (car e)     (vertical e 0)
    (car f)     (vertical f 2)
    (car g)     (vertical g 5)
    (car h)   (horizontal h 5)
    (truck o) (horizontal o 0)
    (truck p)   (vertical p 4)
    (truck r) (horizontal r 3)
    (pos 0 0 n) (pos 1 0 a) (pos 2 0 n) (pos 3 0 o) (pos 4 0 o) (pos 5 0 o)
    (pos 0 1 b) (pos 1 1 a) (pos 2 1 n) (pos 3 1 c) (pos 4 1 p) (pos 5 1 n)
    (pos 0 2 b) (pos 1 2 x) (pos 2 2 x) (pos 3 2 c) (pos 4 2 p) (pos 5 2 d)
    (pos 0 3 e) (pos 1 3 r) (pos 2 3 r) (pos 3 3 r) (pos 4 3 p) (pos 5 3 d)
    (pos 0 4 e) (pos 1 4 n) (pos 2 4 f) (pos 3 4 n) (pos 4 4 n) (pos 5 4 g)
    (pos 0 5 n) (pos 1 5 n) (pos 2 5 f) (pos 3 5 h) (pos 4 5 h) (pos 5 5 g)
  )
  (:goal
    (and (pos 5 2 x))
  )
)