(define (domain resource-consumption)
   (:requirements :strips :typing)
   (:types location gasstation package vehicle)
   (:predicates (at_location_obj ?o - package ?l - location)
                (at_location_veh ?v - vehicle ?l - location)
                (at_gas_station ?v - vehicle ?g - gasstation)
                (in ?v - vehicle ?o - package)
                (full_fuel ?v - vehicle)
                (half_fuel ?v - vehicle))

   (:action Load_Object
       :parameters (?v - vehicle ?l - location ?o - package)
       :precondition (and (at_location_veh ?v ?l)
                          (at_location_obj ?o ?l))
       :effect (and (in ?v ?o)
	            (not (at_location_obj ?o ?l))))

   (:action Move_Location_Location
	:parameters (?v - vehicle ?lfrom ?lto - location)
	:precondition (and (full_fuel ?v)
                           (at_location_veh ?v ?lfrom))
	:effect (and (half_fuel ?v)
                     (at_location_veh ?v ?lto)
                     (not (at_location_veh ?v ?lfrom))
                     (not (full_fuel ?v))))

   (:action Move_Location_GasStation
	:parameters (?v - vehicle ?lfrom - location ?g - gasstation)
	:precondition (and (half_fuel ?v)
                            (at_location_veh ?v ?lfrom))
	:effect (and (at_gas_station ?v ?g)
                     (full_fuel ?v)
                     (not (at_location_veh ?v ?lfrom))
                     (not (half_fuel ?v))))

   (:action Move_GasStation_Location
	:parameters (?v - vehicle ?lto - location ?g - gasstation)
	:precondition (and (full_fuel ?v)
                            (at_gas_station ?v ?g))
	:effect (and (half_fuel ?v)
                     (at_location_veh ?v ?lto)
                     (not (full_fuel ?v))))
)