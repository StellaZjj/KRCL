(define (problem depot-1-2-2-3-3-6-1)
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
        (clear crate4)
        (at pallet1 distributor0)
        (clear pallet1)
        (at pallet2 distributor1)
        (clear crate5)
        (at truck0 distributor0)
        (at truck1 depot0)
        (at hoist0 depot0)
        (available hoist0)
        (at hoist1 distributor0)
        (available hoist1)
        (at hoist2 distributor1)
        (available hoist2)
        (at crate0 depot0)
        (on crate0 pallet0)
        (at crate1 depot0)
        (on crate1 crate0)
        (at crate2 depot0)
        (on crate2 crate1)
        (at crate3 depot0)
        (on crate3 crate2)
        (at crate4 depot0)
        (on crate4 crate3)
        (at crate5 distributor1)
        (on crate5 pallet2)
)
(:goal (and
<HYPOTHESIS>
))
)
