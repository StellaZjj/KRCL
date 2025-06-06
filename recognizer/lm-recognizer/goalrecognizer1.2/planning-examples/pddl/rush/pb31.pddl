(define (problem pb31)
  (:domain rush)
  (:requirements :strips :negative-preconditions)
  (:objects 0 1 2 3 4 5 n x a b c d e f o p q r)
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
    (car b)     (vertical b 3)
    (car c)   (horizontal c 1)
    (car d)     (vertical d 0)
    (car e)   (horizontal e 3)
    (car f)   (horizontal f 4)
    (truck o) (horizontal o 0)
    (truck p)   (vertical p 5)
    (truck q)   (vertical q 2)
    (truck r) (horizontal r 5)
    (pos 0 0 a) (pos 1 0 a) (pos 2 0 n) (pos 3 0 o) (pos 4 0 o) (pos 5 0 o)
    (pos 0 1 n) (pos 1 1 n) (pos 2 1 n) (pos 3 1 b) (pos 4 1 c) (pos 5 1 c)
    (pos 0 2 d) (pos 1 2 x) (pos 2 2 x) (pos 3 2 b) (pos 4 2 n) (pos 5 2 p)
    (pos 0 3 d) (pos 1 3 n) (pos 2 3 q) (pos 3 3 e) (pos 4 3 e) (pos 5 3 p)
    (pos 0 4 f) (pos 1 4 f) (pos 2 4 q) (pos 3 4 n) (pos 4 4 n) (pos 5 4 p)
    (pos 0 5 n) (pos 1 5 n) (pos 2 5 q) (pos 3 5 r) (pos 4 5 r) (pos 5 5 r)
  )
  (:goal
    (and (pos 5 2 x))
  )
)