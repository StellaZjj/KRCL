(define (domain grid)
(:requirements :strips)
(:predicates (connected ?x ?y)
             (keyshape ?k ?s)
             (lockshape ?x ?s)
             (at ?r ?x )
	           (atrobot ?x)
             (place ?p)
             (key ?k)
             (shape ?s)
             (locked ?x)
             (holding ?k)
             (open ?x)
             (armempty ))

(:action unlock
  :parameters (?curpos ?lockpos ?key ?shape)
  :precondition (and (place ?curpos) (place ?lockpos) (key ?key) (shape ?shape)
          (connected ?curpos ?lockpos) (keyshape ?key ?shape)
                   (lockshape ?lockpos ?shape) (atrobot ?curpos) 
                   (locked ?lockpos) (holding ?key))
  :effect (and  (open ?lockpos) (not (locked ?lockpos)))
)

(:action move
  :parameters (?curpos ?nextpos)
  :precondition (and (place ?curpos) (place ?nextpos)
               (atrobot ?curpos) (connected ?curpos ?nextpos) (open ?nextpos))
  :effect (and (atrobot ?nextpos) (not (atrobot ?curpos)))
)

(:action pickup
  :parameters (?curpos ?key)
  :precondition (and (place ?curpos) (key ?key) 
                  (atrobot ?curpos) (at ?key ?curpos) (armempty ))
  :effect (and (holding ?key)
   (not (at ?key ?curpos)) (not (armempty )))
)

(:action pickupandloose
  :parameters (?curpos ?newkey ?oldkey)
  :precondition (and (place ?curpos) (key ?newkey) (key ?oldkey)
                  (atrobot ?curpos) (holding ?oldkey) (at ?newkey ?curpos))
  :effect (and (holding ?newkey) (at ?oldkey ?curpos)
        (not (holding ?oldkey)) (not (at ?newkey ?curpos)))
)

(:action putdown
  :parameters (?curpos ?key)
  :precondition (and (place ?curpos) (key ?key) 
                  (atrobot ?curpos) (holding ?key))
  :effect (and (armempty ) (at ?key ?curpos) (not (holding ?key)))
))