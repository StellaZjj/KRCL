(define (problem depotprob0) (:domain depots)
(:objects
	depot0 depot1 - Depot
	distributor0 - Distributor
	truck0 truck1 - Truck
	pallet0 pallet1 pallet2 - Pallet
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 - Crate
	hoist0 hoist1 hoist2 - Hoist)
(:init
	(at pallet0 depot0)
	(clear crate4)
	(at pallet1 depot1)
	(clear crate6)
	(at pallet2 distributor0)
	(clear crate3)
	(at truck0 depot0)
	(at truck1 distributor0)
	(at hoist0 depot0)
	(available hoist0)
	(at hoist1 depot1)
	(available hoist1)
	(at hoist2 distributor0)
	(available hoist2)
	(at crate0 depot1)
	(on crate0 pallet1)
	(at crate1 depot1)
	(on crate1 crate0)
	(at crate2 depot1)
	(on crate2 crate1)
	(at crate3 distributor0)
	(on crate3 pallet2)
	(at crate4 depot0)
	(on crate4 pallet0)
	(at crate5 depot1)
	(on crate5 crate2)
	(at crate6 depot1)
	(on crate6 crate5)
)

(:goal (and
		(on crate0 pallet0)
		(on crate1 crate6)
		(on crate2 crate4)
		(on crate4 pallet2)
		(on crate5 pallet1)
		(on crate6 crate5)
	)
))
