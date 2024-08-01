(define (problem depot-1-2-2-3-3-4-0)
(:domain Depot)
(:objects
        depot0 depot1 depot2 - Depot
        distributor0 distributor1 distributor2 - Distributor
        truck0 truck1 truck2 truck3 - Truck
        pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 pallet6 pallet7 - Pallet
        crate0 crate1 crate2 crate3 crate4 crate5 - Crate
        hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 hoist6 hoist7 - Hoist)
(:init
        (at pallet0 depot0)
        (clear crate2)
        (at pallet1 distributor0)
        (clear crate1)
        (at pallet2 distributor1)
        (clear crate3)
        (at truck0 depot0)
        (at truck1 distributor1)
        (at hoist0 depot0)
        (available hoist0)
        (at hoist1 distributor0)
        (available hoist1)
        (at hoist2 distributor1)
        (available hoist2)
        (at crate0 distributor0)
        (on crate0 pallet1)
        (at crate1 distributor0)
        (on crate1 crate0)
        (at crate2 depot0)
        (on crate2 pallet0)
        (at crate3 distributor1)
        (on crate3 pallet2)
)
(:goal (and
<HYPOTHESIS>
))
)
