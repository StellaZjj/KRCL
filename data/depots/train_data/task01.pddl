(define (problem depot-1-2-2-3-3-2-0)
(:domain Depot)
(:objects
        depot0 - Depot
        distributor0 distributor1 - Distributor
        truck0 truck1 - Truck
        pallet0 pallet1 pallet2 - Pallet
        crate0 crate1 - Crate
        hoist0 hoist1 hoist2 - Hoist)
(:init
        (at pallet0 depot0)
        (clear pallet0)
        (at pallet1 distributor0)
        (clear crate1)
        (at pallet2 distributor1)
        (clear crate0)
        (at truck0 distributor0)
        (at truck1 distributor1)
        (at hoist0 depot0)
        (available hoist0)
        (at hoist1 distributor0)
        (available hoist1)
        (at hoist2 distributor1)
        (available hoist2)
        (at crate0 distributor1)
        (on crate0 pallet2)
        (at crate1 distributor0)
        (on crate1 pallet1)
)

(:goal (and
                (on crate0 pallet2)
                (on crate1 crate0)
        )
))
