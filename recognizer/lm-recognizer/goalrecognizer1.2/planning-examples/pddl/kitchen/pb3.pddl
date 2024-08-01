(define (problem pb3) (:domain cocina)
(:objects
			manoDer - Mano
			despensa nevera cajon - Almacen
			sal - Ingrediente
			no_hay - Acompanyante
			lenguado - Alimento
			botella_aceite - Botella
			sarten - Utensilio
			vitro_dos - Vitro
			plato_llano - Plato
			lenguado_a_la_plancha - Receta	
)

(:init	
			(tapada botella_aceite)
			(en_pila plato_llano)
			(i_guardado sal despensa)
			(almacenado sarten cajon)
			(guardada botella_aceite despensa)	
			(guardado lenguado nevera)	
)

(:goal (and	(comida_en_plato lenguado_a_la_plancha plato_llano)
			(en_fregadero sarten)
			(en_basura botella_aceite)
			(not (vitro_encendida vitro_dos))
			(not (abierto nevera))	
			(not (abierto despensa))	
			(not (abierto cajon))	

	)
)
)