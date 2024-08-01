(define (problem pbTemplate)
   (:domain depots)
   (:objects 
crate5 crate7 crate4 crate1 crate6 crate3 crate0 crate2 - crate 
pallet1 pallet0 - pallet 
crate5 crate7 pallet1 crate4 crate1 crate6 pallet0 crate3 crate0 crate2 - surface 
distributor0 depot0 - place 
distributor0 - distributor 
truck1 truck0 - truck 
depot0 - depot 
hoist1 hoist0 - hoist  )
   (:init (clear crate4) (at hoist0 depot0) (on crate0 crate7) (at crate6 depot0) (at pallet1 distributor0) (on crate6 pallet0) (at crate4 distributor0) (at pallet0 depot0) (at crate1 distributor0) (at crate5 depot0) (at crate2 depot0) (on crate3 crate2) (available hoist1) (on crate1 crate0) (at hoist1 distributor0) (at crate3 depot0) (clear crate5) (on crate4 crate1) (on crate2 crate6) (at crate7 distributor0) (on crate7 pallet1) (available hoist0) (on crate5 crate3) (at truck1 distributor0) (at crate0 distributor0) (at truck0 distributor0) )
   (:goal (and (on crate2 crate6) (on crate5 crate3) (on crate7 pallet1) (on crate3 crate2) (on crate1 crate0) (on crate4 crate1) (on crate0 crate7) (on crate6 pallet0) ) )
)