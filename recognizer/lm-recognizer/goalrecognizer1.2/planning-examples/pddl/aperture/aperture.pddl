(define (domain aperture)
  (:requirements :strips :typing :equality :negative-preconditions)

  (:types
    robot beacon color cube location - object
    hallway room - location
  )

  (:predicates
    (robot ?bot)
    (beacon ?thing)
    (room ?place)
    (hallway ?place)
    (at ?bot - robot ?place - location)
    (connected ?place1 - location ?place2 - location)
    
    (in ?thing - beacon ?place - location)
    (reported ?bot - robot ?thing - beacon)
    
    (color ?rgb)
    (cube ?obj)
    (ammo ?bot - robot ?rgb - color)
    (portal ?sourcergb - color ?destinationrgb - color)
    (marked ?rgb - color ?place - location)
    (flatwall ?place - location)
    (loaded ?bot - robot)
    (carry ?bot - robot ?obj - cube)
    (dropped ?obj - cube ?source - location)
  )

  (:action enter
    :parameters (?bot - robot ?source - hallway ?destination - room)
    :precondition
      (and
        (at ?bot ?source)
        (not (at ?bot ?destination))
        (connected ?source ?destination)
        (not (loaded ?bot))
      )
    :effect
      (and
        (not (at ?bot ?source))
        (at ?bot ?destination)
      )
  )

  (:action exit
    :parameters (?bot - robot ?source - room ?destination - hallway)
    :precondition
      (and
        (at ?bot ?source)
        (not (at ?bot ?destination))
        (connected ?source ?destination)
        (not (loaded ?bot))
      )
    :effect
      (and
        (not (at ?bot ?source))
        (at ?bot ?destination)
      )
  )

  (:action move
    :parameters (?bot - robot ?source - hallway ?destination - hallway)
    :precondition
      (and
        (at ?bot ?source)
        (not (at ?bot ?destination))
        (connected ?source ?destination)
      )
    :effect
      (and
        (not (at ?bot ?source))
        (at ?bot ?destination)
      )
  )

  (:action report
    :parameters (?bot - robot ?source - location ?thing - beacon)
    :precondition
      (and
        (at ?bot ?source)
        (in ?thing ?source)
        (not (reported ?bot ?thing))
      )
    :effect
      (and
        (reported ?bot ?thing)
      )
  )

  (:action shoot
    :parameters (?bot - robot ?source - location ?previous - location ?rgb - color)
    :precondition
      (and
        (ammo ?bot ?rgb)
        (at ?bot ?source)
        (marked ?rgb ?previous)
        (flatwall ?source)
        (not (marked ?rgb ?source))
        (not (loaded ?bot))
        (not (= ?previous ?source))
      )
    :effect
      (and
        (not (marked ?rgb ?previous))
        (marked ?rgb ?source)
      )
  )

  (:action teleport
    :parameters (?bot - robot ?source - location ?destination - location ?sourcergb - color ?destinationrgb - color)
    :precondition
      (and
        (at ?bot ?source)
        (not (at ?bot ?destination))
        (marked ?sourcergb ?source)
        (marked ?destinationrgb ?destination)
        (portal ?sourcergb ?destinationrgb)
        (not (= ?source ?destination))
      )
    :effect
      (and
        (not (at ?bot ?source))
        (at ?bot ?destination)
      )
  )

  (:action pick
    :parameters (?bot - robot ?source - location ?obj - cube)
    :precondition
      (and
        (at ?bot ?source)
        (dropped ?obj ?source)
        (not (loaded ?bot))
        (not (carry ?bot ?obj))
      )
    :effect
      (and
        (not (dropped ?obj ?source))
        (loaded ?bot)
        (carry ?bot ?obj)
      )
  )

  (:action drop
    :parameters (?bot - robot ?source - location ?obj - cube)
    :precondition
      (and
        (at ?bot ?source)
        (not (dropped ?obj ?source))
        (loaded ?bot)
        (carry ?bot ?obj)
      )
    :effect
      (and
        (dropped ?obj ?source)
        (not (loaded ?bot))
        (not (carry ?bot ?obj))
      )
  )
)