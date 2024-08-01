(define (domain planks)
  (:requirements :strips)
  (:predicates
    (agent ?ag)
    (plank ?p)
    (light ?ag)
    (holding ?ag ?p)
    (at ?ag ?l)
    (empty ?l)
    (adjacent ?a ?b)
    (bridge ?a ?p ?b)
  )

  (:action cross
    :parameters (?ag ?p ?from ?to)
    :precondition
      (and
        (agent ?ag)
        (plank ?p)
        (at ?ag ?from)
        (adjacent ?from ?to)
        (bridge ?from ?p ?to)
        (light ?ag)
        (empty ?to)
      )
    :effect
      (and
        (not (at ?ag ?from))
        (at ?ag ?to)
        (empty ?from)
        (not (empty ?to))
      )
  )

  (:action pick
    :parameters (?ag ?p ?from ?to)
    :precondition
      (and
        (agent ?ag)
        (plank ?p)
        (light ?ag)
        (at ?ag ?from)
        (adjacent ?from ?to)
        (bridge ?from ?p ?to)
      )
    :effect
      (and
        (not (light ?ag))
        (holding ?ag ?p)
        (not (bridge ?from ?p ?to))
        (not (bridge ?to ?p ?from))
      )
  )

  (:action lay
    :parameters (?ag ?p ?from ?to)
    :precondition
      (and
        (agent ?ag)
        (plank ?p)
        (holding ?ag ?p)
        (at ?ag ?from)
        (adjacent ?from ?to)
      )
    :effect
      (and
        (light ?ag)
        (not (holding ?ag ?p))
        (bridge ?from ?p ?to)
        (bridge ?to ?p ?from)
      )
  )
)