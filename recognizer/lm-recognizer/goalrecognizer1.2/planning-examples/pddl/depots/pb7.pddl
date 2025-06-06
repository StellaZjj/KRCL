(define (problem depotprob0) (:domain depots)
(:objects
	depot0 depot1 depot2 depot3 - Depot
	distributor0 distributor1 - Distributor
	truck0 - Truck
	pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 - Pallet
	crate0 crate1 - Crate
	hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 - Hoist)
(:init
	(at pallet0 depot0)
	(clear crate0)
	(at pallet1 depot1)
	(clear pallet1)
	(at pallet2 depot2)
	(clear pallet2)
	(at pallet3 depot3)
	(clear pallet3)
	(at pallet4 distributor0)
	(clear pallet4)
	(at pallet5 distributor1)
	(clear crate1)
	(at truck0 distributor1)
	(at hoist0 depot0)
	(available hoist0)
	(at hoist1 depot1)
	(available hoist1)
	(at hoist2 depot2)
	(available hoist2)
	(at hoist3 depot3)
	(available hoist3)
	(at hoist4 distributor0)
	(available hoist4)
	(at hoist5 distributor1)
	(available hoist5)
	(at crate0 depot0)
	(on crate0 pallet0)
	(at crate1 distributor1)
	(on crate1 pallet5)
)

(:goal (and
		(on crate1 pallet1)
	)
))
