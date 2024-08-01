(define (domain adventure)
  (:requirements :strips :negative-preconditions)

  (:predicates
    (robot ?bot)
    (portal ?srcx ?srcy ?dstx ?dsty)
    (down ?a ?b)
    (right ?a ?b)
    (at ?something ?x ?y)
    (blocked ?x ?y)
    (occupied ?x ?y)
    (item ?obj)
    (got ?bot ?obj)
    (dropped ?obj ?x ?y)
  )

  (:action move_right
    :parameters (?bot ?srcx ?srcy ?dstx ?ground)
    :precondition
      (and
        (robot ?bot)
        (at ?bot ?srcx ?srcy)
        (right ?srcx ?dstx)
        (down ?srcy ?ground)
        (blocked ?srcx ?ground)
        (not (blocked ?srcx ?srcy))
        (not (blocked ?dstx ?srcy))
      )
    :effect
      (and
        (not (at ?bot ?srcx ?srcy))
        (at ?bot ?dstx ?srcy)
        (not (occupied ?srcx ?srcy))
        (occupied ?dstx ?srcy)
      )
  )

  (:action move_left
    :parameters (?bot ?srcx ?srcy ?dstx ?ground)
    :precondition
      (and
        (robot ?bot)
        (at ?bot ?srcx ?srcy)
        (right ?dstx ?srcx)
        (down ?srcy ?ground)
        (blocked ?srcx ?ground)
        (not (blocked ?srcx ?srcy))
        (not (blocked ?dstx ?srcy))
      )
    :effect
      (and
        (not (at ?bot ?srcx ?srcy))
        (at ?bot ?dstx ?srcy)
        (not (occupied ?srcx ?srcy))
        (occupied ?dstx ?srcy)
      )
  )

  (:action jump_right
    :parameters (?bot ?srcx ?srcy ?dstx ?dsty ?ground)
    :precondition
      (and
        (robot ?bot)
        (at ?bot ?srcx ?srcy)
        (right ?srcx ?dstx)
        (down ?srcy ?ground)
        (down ?dsty ?srcy)
        (blocked ?srcx ?ground)
        (blocked ?dstx ?srcy)
        (not (blocked ?srcx ?srcy))
        (not (blocked ?srcx ?dsty))
        (not (blocked ?dstx ?dsty))
      )
    :effect
      (and
        (not (at ?bot ?srcx ?srcy))
        (at ?bot ?dstx ?dsty)
        (not (occupied ?srcx ?srcy))
        (occupied ?dstx ?dsty)
      )
  )

  (:action jump_left
    :parameters (?bot ?srcx ?srcy ?dstx ?dsty ?ground)
    :precondition
      (and
        (robot ?bot)
        (at ?bot ?srcx ?srcy)
        (right ?dstx ?srcx)
        (down ?srcy ?ground)
        (down ?dsty ?srcy)
        (blocked ?srcx ?ground)
        (blocked ?dstx ?srcy)
        (not (blocked ?srcx ?srcy))
        (not (blocked ?srcx ?dsty))
        (not (blocked ?dstx ?dsty))
      )
    :effect
      (and
        (not (at ?bot ?srcx ?srcy))
        (at ?bot ?dstx ?dsty)
        (not (occupied ?srcx ?srcy))
        (occupied ?dstx ?dsty)
      )
  )

  (:action fall
    :parameters (?bot ?srcx ?srcy ?dsty)
    :precondition
      (and
        (robot ?bot)
        (at ?bot ?srcx ?srcy)
        (down ?srcy ?dsty)
        (not (blocked ?srcx ?srcy))
        (not (blocked ?srcx ?dsty))
      )
    :effect
      (and
        (not (at ?bot ?srcx ?srcy))
        (at ?bot ?srcx ?dsty)
        (not (occupied ?srcx ?srcy))
        (occupied ?srcx ?dsty)
      )
  )

  (:action teleport_right
    :parameters (?bot ?srcx ?ground ?p1x ?p1y ?p2x ?p2y ?dstx)
    :precondition
      (and
        (robot ?bot)
        (portal ?p1x ?p1y ?p2x ?p2y)
        (at ?bot ?srcx ?p1y)
        (right ?srcx ?p1x)
        (right ?p2x ?dstx)
        (down ?p1y ?ground)
        (blocked ?srcx ?ground)
        (not (blocked ?srcx ?p1y))
        (not (blocked ?dstx ?p2y))
      )
    :effect
      (and
        (not (at ?bot ?srcx ?p1y))
        (at ?bot ?dstx ?p2y)
        (not (occupied ?srcx ?p1y))
        (occupied ?dstx ?p2y)
      )
  )

  (:action teleport_left
    :parameters (?bot ?srcx ?ground ?p1x ?p1y ?p2x ?p2y ?dstx)
    :precondition
      (and
        (robot ?bot)
        (portal ?p1x ?p1y ?p2x ?p2y)
        (at ?bot ?srcx ?p1y)
        (right ?p1x ?srcx)
        (right ?dstx ?p2x)
        (down ?p1y ?ground)
        (blocked ?srcx ?ground)
        (not (blocked ?srcx ?p1y))
        (not (blocked ?dstx ?p2y))
      )
    :effect
      (and
        (not (at ?bot ?srcx ?p1y))
        (at ?bot ?dstx ?p2y)
        (not (occupied ?srcx ?p1y))
        (occupied ?dstx ?p2y)
      )
  )

  (:action pick
    :parameters (?bot ?srcx ?srcy ?ground ?obj)
    :precondition
      (and
        (robot ?bot)
        (item ?obj)
        (at ?bot ?srcx ?srcy)
        (down ?srcy ?ground)
        (blocked ?srcx ?ground)
;        (not (blocked ?srcx ?srcy))
        (dropped ?obj ?srcx ?srcy)
      )
    :effect
      (and
        (not (dropped ?obj ?srcx ?srcy))
        (got ?bot ?obj)
      )
  )

  (:action drop
    :parameters (?bot ?srcx ?srcy ?ground ?obj)
    :precondition
      (and
        (robot ?bot)
        (item ?obj)
        (at ?bot ?srcx ?srcy)
        (down ?srcy ?ground)
        (blocked ?srcx ?ground)
;        (not (blocked ?srcx ?srcy))
        (got ?bot ?obj)
      )
    :effect
      (and
        (not (got ?bot ?obj))
        (dropped ?obj ?srcx ?srcy)
      )
  )
)