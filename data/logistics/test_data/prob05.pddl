(define (problem strips-log-x-5)
   (:domain logistics)
   (:objects 
    apn1 - airplane
	apt9 apt8 apt7 apt6 apt5 apt4 apt3 apt2 apt1 - airport
	pos9 pos8 pos7 pos6 pos5 pos4 pos3 pos2 pos1 - location 	 
	cit9 cit8 cit7 cit6 cit5 cit4 cit3 cit2 cit1 - city 
	tru11 tru10 tru9 tru8 tru7 tru6 tru5 tru4 tru3 tru2 tru1 - truck 
	obj21 obj13 obj12 obj11 - package
    )
   (:init 
          (in-city apt9 cit9)
          (in-city pos9 cit9)
          (in-city apt8 cit8)
          (in-city pos8 cit8)
          (in-city apt7 cit7)
          (in-city pos7 cit7)
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
          (at apn1 apt8)
          (at tru11 pos9)
          (at tru10 pos8)
          (at tru9 pos7)
          (at tru8 pos6)
          (at tru7 pos5)
          (at tru6 pos4)
          (at tru5 pos3)
          (at tru4 pos2)
          (at tru3 pos1)
          (at tru2 pos8)
          (at tru1 apt3)
          (at obj21 pos8)
          (at obj13 pos9)
          (at obj12 apt8)
          (at obj11 apt6))
   (:goal (and (at obj21 apt2)
               (at obj13 apt7)
               (at obj12 pos3)
               (at obj11 apt9))))