(define (problem pb1) 
(:domain cocina)
(:objects
			mano_der - Mano
			despensa nevera - Almacen
			azucar - Ingrediente
			no_hay - Acompanyante
			fresas - Alimento
			nata - Botella
			no_hay - Utensilio
			no_usa - Vitro
			plato_pequenyo - Plato
			fresas_con_azucar - Receta	
	)
(:init	
			(sin_vitro fresas_con_azucar)
			(i_guardado azucar despensa)
			(guardado fresas nevera)	
			(en_pila plato_pequenyo)
)

(:goal (and	(comida_en_plato fresas_con_azucar plato_pequenyo)
			(not (abierto nevera))	
			(not (abierto despensa))
	)
)
)