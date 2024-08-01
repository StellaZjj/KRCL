(define (domain cooking)
(:requirements :strips :typing)
(:types 
	bowl frying-pan ham knife chopstick seasoning condiment cooking-dish place - object
	egg
	egg ham seasoning - condiment
	bowl frying_pan - cooking-dish
	table stove - place
)
 
(:predicates 
	(at ?o - object ?p - place)
	(in ?c - condiment ?d - cooking-dish)
	(holding ?o - object)

	(shell-egg ?e - egg)
	(broken-egg ?e - egg)
	(boiled-egg ?e - egg)
	(ham-egg ?e - egg)
	(kinshi-egg ?e - egg)
	(omellete-egg ?e - egg)
	(scramble-egg ?e - egg)
)

(:action grab-object
	:parameters (?o - object ?t - place)
	:precondition (and (at ?o ?t))
	:effect (and (not (at ?o ?t)) (holding ?o))
)

(:action break-egg
	:parameters (?e - egg)
	:precondition (and (shell-egg ?e) (holding ?e))
	:effect (and (not (shell-egg ?e)) (broken-egg ?e))
)

(:action put-broken-egg
	:parameters (?e - egg ?d - cooking-dish)
	:precondition (and (broken-egg ?e) (holding ?e) (not (shell-egg ?e)) (not (in ?e ?d)) )
	:effect (and (in ?e ?d) (not (holding ?e)))
)

)