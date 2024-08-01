(define (problem strips-log-x-1)
   (:domain logistics)
   (:objects 
    apn2 apn1 - airplane
	apt6 apt5 apt4 apt3 apt2 apt1 - airport
	pos6 pos5 pos4 pos3 pos2 pos1 - location 
    cit6 cit5 cit4 cit3 cit2 cit1 - city
    tru6 tru5 tru4 tru3 tru2 tru1 - truck
	obj23 obj22 obj21 obj13 obj12 obj11 - package    
	)
	
   (:init 
          (in-city apt6 cit6)
          (in-city pos6 cit6)
          (in-city apt5 cit5)
          (in-city pos5 cit5)
          (in-city apt4 cit4)
          (in-city pos4 cit4)
          (in-city apt3 cit3)
          (in-city pos3 cit3)
          (in-city apt2 cit2)
          (in-city pos2 cit2)
          (in-city apt1 cit1)
          (in-city pos1 cit1)
          (at apn2 apt4)
          (at apn1 apt4)
          (at tru6 pos6)
          (at tru5 pos5)
          (at tru4 pos4)
          (at tru3 pos3)
          (at tru2 pos2)
          (at tru1 pos1)
          (at obj23 pos3)
          (at obj22 apt4)
          (at obj21 pos1)
          (at obj13 pos1)
          (at obj12 apt1)
          (at obj11 pos2))
   (:goal (and (at obj23 apt1)
               (at obj22 apt6)
               (at obj21 apt3)
               (at obj13 pos6)
               (at obj12 apt6)
               (at obj11 pos2))))