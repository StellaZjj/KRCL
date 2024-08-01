;https://en.wikipedia.org/wiki/Activities_of_daily_living

;http://www.sciencedirect.com/science/article/pii/S1386505606000098
;http://www.maximhomecare.com/adl/
;http://repositorium.sdum.uminho.pt/bitstream/1822/36506/1/2015_MYS_ACM.pdf
(define (domain healthcare)
	(:requirements :typing :strips)
	(:types
		house-location person pills kitchen-cabinet - object
		room living-room kitchen toilet bathroom - house-location
		kitchen-cabinet	- storing-place
		carer assisted-person - person
	)
	(:predicates
		(at ?p - person ?l - house-location)
		(in ?t - medicine ?s - storing-place ?l - house-location)
		(adjacent ?l1 ?l2  - house-location)
		(holding ?p - person ?o - object)
	)
	(:action move
		:parameters(?p - person ?from ?to - house-location)
		:precondition (and (at ?p ?from) (adjacent ?from ?to))
  		:effect (and (not (at ?p ?from)) (at ?p ?to))
	)
)