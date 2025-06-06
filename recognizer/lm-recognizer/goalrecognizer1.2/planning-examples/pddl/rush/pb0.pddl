(define (problem pb0)
  (:domain rush)
  (:requirements :strips :negative-preconditions)
  (:objects 0 1 2 3 4 5 n x )
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
    (pos 0 0 n) (pos 1 0 n) (pos 2 0 n) (pos 3 0 n) (pos 4 0 n) (pos 5 0 n)
    (pos 0 1 n) (pos 1 1 n) (pos 2 1 n) (pos 3 1 n) (pos 4 1 n) (pos 5 1 n)
    (pos 0 2 x) (pos 1 2 x) (pos 2 2 n) (pos 3 2 n) (pos 4 2 n) (pos 5 2 n)
    (pos 0 3 n) (pos 1 3 n) (pos 2 3 n) (pos 3 3 n) (pos 4 3 n) (pos 5 3 n)
    (pos 0 4 n) (pos 1 4 n) (pos 2 4 n) (pos 3 4 n) (pos 4 4 n) (pos 5 4 n)
    (pos 0 5 n) (pos 1 5 n) (pos 2 5 n) (pos 3 5 n) (pos 4 5 n) (pos 5 5 n)
  )
  (:goal
    (and (pos 5 2 x))
  )
)