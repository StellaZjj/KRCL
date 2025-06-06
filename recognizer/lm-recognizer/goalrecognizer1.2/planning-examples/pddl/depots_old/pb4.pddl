(define (problem pb4) (:domain depots)
(:objects
	depot0 distributor0 distributor1 truck0 truck1 pallet0 pallet1 pallet2 crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 hoist0 hoist1 hoist2 )
(:init
	(pallet pallet0)
	(surface pallet0)
	(at pallet0 depot0)
	(clear crate7)
	(pallet pallet1)
	(surface pallet1)
	(at pallet1 distributor0)
	(clear crate2)
	(pallet pallet2)
	(surface pallet2)
	(at pallet2 distributor1)
	(clear crate6)
	(truck truck0)
	(at truck0 distributor1)
	(truck truck1)
	(at truck1 distributor1)
	(hoist hoist0)
	(at hoist0 depot0)
	(available hoist0)
	(hoist hoist1)
	(at hoist1 distributor0)
	(available hoist1)
	(hoist hoist2)
	(at hoist2 distributor1)
	(available hoist2)
	(crate crate0)
	(surface crate0)
	(at crate0 depot0)
	(on crate0 pallet0)
	(crate crate1)
	(surface crate1)
	(at crate1 depot0)
	(on crate1 crate0)
	(crate crate2)
	(surface crate2)
	(at crate2 distributor0)
	(on crate2 pallet1)
	(crate crate3)
	(surface crate3)
	(at crate3 distributor1)
	(on crate3 pallet2)
	(crate crate4)
	(surface crate4)
	(at crate4 depot0)
	(on crate4 crate1)
	(crate crate5)
	(surface crate5)
	(at crate5 distributor1)
	(on crate5 crate3)
	(crate crate6)
	(surface crate6)
	(at crate6 distributor1)
	(on crate6 crate5)
	(crate crate7)
	(surface crate7)
	(at crate7 depot0)
	(on crate7 crate4)
	(place depot0)
	(place distributor0)
	(place distributor1)
)

(:goal (and
		(on crate0 crate4)
		(on crate2 crate6)
		(on crate4 crate7)
		(on crate5 pallet2)
		(on crate6 pallet1)
		(on crate7 pallet0)
	)
))
