(define (problem logistics-99)
(:domain logistics)
(:objects
 plane1 - airplane
 airPortC airPortE - airport
 posA posB posC posD posE - location
 city1 city2 - city
 truck1 - truck
 box - package)

(:init 
	(at plane1 airPortE) (at truck1 posD)
	(at box posB)
	(in-city airPortC city1)
	(in-city airPortE city2)
	(in-city posA city1) (in-city posB city1) (in-city posC city1) (in-city posD city1)
	(in-city posE city2)
)

(:goal (and 
	(at box airPortE)
	)
)
)
