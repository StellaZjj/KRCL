(define (problem pb13)
  (:domain rush)
  (:requirements :strips :negative-preconditions)
  (:objects 0 1 2 3 4 5 n x a b c d e f g h i k o p)
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
    (car d)     (vertical d 2)
    (car e)     (vertical e 1)
    (car f)   (horizontal f 3)
    (car g)     (vertical g 3)
    (car h)   (horizontal h 4)
    (car i)   (horizontal i 5)
    (car k)   (horizontal k 5)
    (truck o)   (vertical o 5)
    (truck p)   (vertical p 0)
    (pos 0 0 a) (pos 1 0 a) (pos 2 0 b) (pos 3 0 b) (pos 4 0 c) (pos 5 0 n)
    (pos 0 1 n) (pos 1 1 n) (pos 2 1 d) (pos 3 1 n) (pos 4 1 c) (pos 5 1 o)
    (pos 0 2 n) (pos 1 2 e) (pos 2 2 d) (pos 3 2 x) (pos 4 2 x) (pos 5 2 o)
    (pos 0 3 p) (pos 1 3 e) (pos 2 3 n) (pos 3 3 f) (pos 4 3 f) (pos 5 3 o)
    (pos 0 4 p) (pos 1 4 n) (pos 2 4 n) (pos 3 4 g) (pos 4 4 h) (pos 5 4 h)
    (pos 0 5 p) (pos 1 5 i) (pos 2 5 i) (pos 3 5 g) (pos 4 5 k) (pos 5 5 k)
  )
  (:goal
    (and (pos 5 2 x))
  )
)