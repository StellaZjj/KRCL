(define (problem pb1)
(:domain cooking)
(:objects
  e1 table1 stove1 bowl1 frying_pan1 - object
  e1 - egg
  table1 stove1 - place
  bowl1 frying_pan1 - cooking-dish
)

(:init
  (at e1 table1)
  (shell-egg e1)
  (at bowl1 table1)
  (at frying_pan1 stove1)
)

(:goal
  (and
    (broken-egg e1)
    (in e1 frying_pan1)
  )
))