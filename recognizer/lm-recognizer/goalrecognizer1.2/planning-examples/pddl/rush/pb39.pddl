(define (problem pb39)
  (:domain rush)
  (:requirements :strips :negative-preconditions)
  (:objects 0 1 2 3 4 5 n x a b c d e f g h i o r)
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
    (car a)     (vertical a 2)
    (car b)     (vertical b 3)
    (car c)     (vertical c 2)
    (car d)   (horizontal d 3)
    (car e)   (horizontal e 3)
    (car f)     (vertical f 0)
    (car g)     (vertical g 1)
    (car h)   (horizontal h 4)
    (car i)   (horizontal i 5)
    (truck o) (horizontal o 0)
    (truck r)   (vertical r 5)
    (pos 0 0 n) (pos 1 0 n) (pos 2 0 a) (pos 3 0 o) (pos 4 0 o) (pos 5 0 o)
    (pos 0 1 n) (pos 1 1 n) (pos 2 1 a) (pos 3 1 b) (pos 4 1 n) (pos 5 1 n)
    (pos 0 2 x) (pos 1 2 x) (pos 2 2 c) (pos 3 2 b) (pos 4 2 n) (pos 5 2 r)
    (pos 0 3 d) (pos 1 3 d) (pos 2 3 c) (pos 3 3 e) (pos 4 3 e) (pos 5 3 r)
    (pos 0 4 f) (pos 1 4 g) (pos 2 4 h) (pos 3 4 h) (pos 4 4 n) (pos 5 4 r)
    (pos 0 5 f) (pos 1 5 g) (pos 2 5 i) (pos 3 5 i) (pos 4 5 n) (pos 5 5 n)
  )
  (:goal
    (and (pos 5 2 x))
  )
)