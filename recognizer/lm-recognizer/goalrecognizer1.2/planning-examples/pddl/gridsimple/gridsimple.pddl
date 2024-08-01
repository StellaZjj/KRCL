(define (domain gridsimple)
(:requirements :strips :typing)
(:types 
	place
)
(:predicates
	(at ?p - place)
	(connected ?p1 ?p2 - place)
)
(:action move
	:parameters (?from - place ?to - place)
	:precondition (and (at ?from) (connected ?from ?to) )
	:effect (and (at ?to) (not (at ?from)))
))