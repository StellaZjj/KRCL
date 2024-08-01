(define (problem logistics-c2-s2-p5-a1-5)
(:domain logistics)
(:objects apn1 - airplane
          apt1 apt2 - airport           
		  pos1 pos2 - location		  
		  cit1 cit2 - city
          tru1 tru2 - truck
          obj11 obj12 obj13 obj21 obj22 - package
)
(:init
    (in-city  apt1 cit1)
    (in-city  pos1 cit1)
    (in-city  apt2 cit2)
    (in-city  pos2 cit2)
    (at tru1 pos1)
    (at tru2 pos2)
    (at obj11 pos1)
    (at obj12 pos1)
    (at obj13 pos1)
    (at obj21 apt1)
    (at obj22 pos2)
    (at apn1 apt1)
)

(:goal (and 
	<HYPOTHESIS>
	)
)
)
