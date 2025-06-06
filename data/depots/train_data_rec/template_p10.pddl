(define (problem depot-3-3-2-6-6-6-1)
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
        (at pallet1 depot1)
        (clear pallet1)
        (at pallet2 depot2)
        (clear pallet2)
        (at pallet3 distributor0)
        (clear pallet3)
        (at pallet4 distributor1)
        (clear crate3)
        (at pallet5 distributor2)
        (clear crate5)
        (at truck0 depot2)
        (at truck1 distributor2)
        (at hoist0 depot0)
        (available hoist0)
        (at hoist1 depot1)
        (available hoist1)
        (at hoist2 depot2)
        (available hoist2)
        (at hoist3 distributor0)
        (available hoist3)
        (at hoist4 distributor1)
        (available hoist4)
        (at hoist5 distributor2)
        (available hoist5)
        (at crate0 depot0)
        (on crate0 pallet0)
        (at crate1 distributor1)
        (on crate1 pallet4)
        (at crate2 depot0)
        (on crate2 crate0)
        (at crate3 distributor1)
        (on crate3 crate1)
        (at crate4 distributor2)
        (on crate4 pallet5)
        (at crate5 distributor2)
        (on crate5 crate4)
)

(:goal (and
<HYPOTHESIS>
))
)
