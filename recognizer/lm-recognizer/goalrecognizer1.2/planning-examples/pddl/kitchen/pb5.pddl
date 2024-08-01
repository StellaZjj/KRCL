(define (problem pb5) 
(:domain cocina)
(:objects
			despensa nevera cajon - Almacen
			champinyones - Ingrediente
			jamon_serrano - Acompanyante
			huevo - Alimento
			botella_aceite - Botella
			sarten - Utensilio
			vitro_cuatro - Vitro
			plato_llano - Plato
			manoDer - Mano
			revuelto_de_champinyones_y_jamon_serrano - Receta
	
	)
(:init	
			
			(con_acompanyante revuelto_de_champinyones_y_jamon_serrano)
			(i_guardado champinyones nevera)
			(guardado huevo nevera)	
			(a_guardado jamon_serrano nevera)	
			(almacenado sarten cajon)
			(guardada botella_aceite despensa)	
			(tapada botella_aceite)
			(en_pila plato_llano)
)

(:goal (and	(comida_en_plato revuelto_de_champinyones_y_jamon_serrano plato_llano)
			(en_fregadero sarten)
			(en_basura botella_aceite)
			(not (vitro_encendida vitro_cuatro))
			(not (abierto nevera))	
			(not (abierto cajon))	

	)
)
)