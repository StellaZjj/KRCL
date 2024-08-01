(define (problem depot-1-2-2-6-3-6-1)
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
        (clear pallet1)
        (at pallet2 distributor1)
        (clear crate5)
        (at pallet3 distributor1)
        (clear pallet3)
        (at pallet4 distributor1)
        (clear crate4)
        (at pallet5 distributor0)
        (clear crate0)
        (at truck0 distributor1)
        (at truck1 distributor1)
        (at hoist0 depot0)
        (available hoist0)
        (at hoist1 distributor0)
        (available hoist1)
        (at hoist2 distributor1)
        (available hoist2)
        (at crate0 distributor0)
        (on crate0 pallet5)
        (at crate1 distributor1)
        (on crate1 pallet2)
        (at crate2 depot0)
        (on crate2 pallet0)
        (at crate3 distributor1)
        (on crate3 crate1)
        (at crate4 distributor1)
        (on crate4 pallet4)
        (at crate5 distributor1)
        (on crate5 crate3)
)
(:goal (and
<HYPOTHESIS>
))
)
