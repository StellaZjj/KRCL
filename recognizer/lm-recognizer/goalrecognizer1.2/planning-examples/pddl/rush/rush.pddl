(define (domain rush)
  (:predicates
    (car ?c)
    (truck ?t)
    (vertical ?c ?x)
    (horizontal ?c ?y)
    (equal ?a ?b)
    (near ?a ?b)
    (pos ?x ?y ?c)
  )

  (:action move_car_horizontal
    :parameters (?c ?x1 ?x2 ?x3 ?y)
    :precondition
      (and
        (car ?c) (horizontal ?c ?y)
        (not (equal ?x1 ?x3))
        (near ?x1 ?x2) (near ?x2 ?x3)
        (pos ?x1 ?y ?c) (pos ?x2 ?y ?c) (pos ?x3 ?y n)
      )
    :effect
      (and
        (not (pos ?x1 ?y ?c)) (not (pos ?x3 ?y n))
        (pos ?x1 ?y n) (pos ?x3 ?y ?c)
      )
  )

  (:action move_car_vertical
    :parameters (?c ?x ?y1 ?y2 ?y3)
    :precondition
      (and
        (car ?c) (vertical ?c ?x)
        (not (equal ?y1 ?y3))
        (near ?y1 ?y2) (near ?y2 ?y3)
        (pos ?x ?y1 ?c) (pos ?x ?y2 ?c) (pos ?x ?y3 n)
      )
    :effect
      (and
        (not (pos ?x ?y1 ?c)) (not (pos ?x ?y3 n))
        (pos ?x ?y1 n) (pos ?x ?y3 ?c)
      )
  )

  (:action move_truck_horizontal
    :parameters (?t ?x1 ?x2 ?x3 ?x4 ?y)
    :precondition
      (and
        (truck ?t) (horizontal ?t ?y)
        (not (equal ?x1 ?x3)) (not (equal ?x2 ?x4))
        (near ?x1 ?x2) (near ?x2 ?x3) (near ?x3 ?x4)
        (pos ?x1 ?y ?t) (pos ?x2 ?y ?t) (pos ?x3 ?y ?t) (pos ?x4 ?y n)
      )
    :effect
      (and
        (not (pos ?x1 ?y ?t)) (not (pos ?x4 ?y n))
        (pos ?x1 ?y n) (pos ?x4 ?y ?t)
      )
  )

  (:action move_truck_vertical
    :parameters (?t ?x ?y1 ?y2 ?y3 ?y4)
    :precondition
      (and
        (truck ?t) (vertical ?t ?x)
        (not (equal ?y1 ?y3)) (not (equal ?y2 ?y4))
        (near ?y1 ?y2) (near ?y2 ?y3) (near ?y3 ?y4)
        (pos ?x ?y1 ?t) (pos ?x ?y2 ?t) (pos ?x ?y3 ?t) (pos ?x ?y4 n)
      )
    :effect
      (and
        (not (pos ?x ?y1 ?t)) (not (pos ?x ?y4 n))
        (pos ?x ?y1 n) (pos ?x ?y4 ?t)
      )
  )
)