(define (problem pb6) 
(:domain cocina)
(:objects
			manoDer - Mano
			despensa nevera congelador cajon - Almacen
			guisantes_congelados - Ingrediente
			zanahoria_congelada - Acompanyante
			esparragos_verdes - Alimento
			botella_aceite - Botella
			sarten - Utensilio
			vitro_cuatro - Vitro
			plato_llano - Plato
			salteado - Receta	
)

(:init	
			(con_acompanyante salteado)
			(i_guardado guisantes_congelados congelador)
			(a_guardado zanahoria_congelada congelador)
			(guardado esparragos_verdes nevera)	
			(almacenado sarten cajon)
			(guardada botella_aceite despensa)	
			(tapada botella_aceite)
			(en_pila plato_llano)
)

(:goal (and	(comida_en_plato salteado plato_llano)
			(en_fregadero sarten)
			(en_basura botella_aceite)
			(not (vitro_encendida vitro_cuatro))
			(not (abierto nevera))	
			(not (abierto congelador))	
			(not (abierto despensa))	
			(not (abierto cajon))	

	)
)
)