(define (problem pb4) (:domain cocina)
(:objects
			manoDer - Mano
			despensa congelador cajon - Almacen
			sal - Ingrediente
			patatas_fritas_congeladas - Acompanyante
			nuggets - Alimento
			botella_aceite - Botella
			sarten - Utensilio
			vitro_cuatro - Vitro
			plato_llano - Plato
			nuggets_con_patatas - Receta
	
	)
(:init	
			(con_acompanyante nuggets_con_patatas)
			(i_guardado sal despensa)
			(guardado nuggets congelador)	
			(a_guardado patatas_fritas_congeladas congelador)	
			(almacenado sarten cajon)
			(guardada botella_aceite despensa)	
			(tapada botella_aceite)
			(en_pila plato_llano)
)

(:goal (and	(comida_en_plato nuggets_con_patatas plato_llano)
			(en_fregadero sarten)
			(en_basura botella_aceite)
			(not (vitro_encendida vitro_cuatro))
			(not (abierto congelador))	
			(not (abierto despensa))	
			(not (abierto cajon))	

	)
)
)