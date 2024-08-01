(define (pb2) 
(:domain cocina)
(:objects
			mano_der - Mano
			nevera - Almacen
			melon - Ingrediente
			no_hay - Acompanyante
			jamon_serrano - Alimento
			no_hay - Botella
			no_hay - Utensilio
			no_usa - Vitro
			plato_llano - Plato
			jamon_con_melon - Receta
	
	)
(:init	
			(sin_vitro jamon_con_melon)
			(i_guardado melon nevera)
			(guardado jamon_serrano nevera)	
			(en_pila plato_llano)
)

(:goal (and	(comida_en_plato jamon_con_melon plato_llano)
			(not (abierto nevera))	

	)
)
)