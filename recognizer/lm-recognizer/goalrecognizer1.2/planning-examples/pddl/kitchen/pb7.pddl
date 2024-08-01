(define (problem pb7) (:domain cocina)
(:objects
			manoDer - Mano
			despensa nevera cajon - Almacen
			jamon - Ingrediente
			queso - Acompanyante
			pan - Alimento
			botella_aceite - Botella
			sarten - Utensilio
			vitro_tres - Vitro
			plato_pequenyo - Plato
			sandwich_mixto - Receta	
			
	)
	
(:init	
			(con_acompanyante sandwich_mixto)
			(i_guardado jamon nevera)
			(a_guardado queso nevera)	
			(guardado pan despensa)	
			(almacenado sarten cajon)
			(guardada botella_aceite despensa)	
			(tapada botella_aceite)
			(en_pila plato_pequenyo)
			
)

(:goal (and	(comida_en_plato sandwich_mixto plato_pequenyo)
			(en_fregadero sarten)
			(en_basura botella_aceite)
			(not (vitro_encendida vitro_tres))
			(not (abierto nevera))	
			(not (abierto despensa))	
			(not (abierto cajon))	

	)
)
)