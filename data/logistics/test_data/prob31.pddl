(define (problem strips-log-y-1)
   (:domain logistics)
   (:objects 
 	apn2 apn1 - airplane   
	apt5 apt4 apt3 apt2 apt1 - airport	
	pos5 pos4 pos3 pos2 pos1 - location	
	cit5 cit4 cit3 cit2 cit1 - city	
	tru5 tru4 tru3 tru2 tru1 - truck		
	obj13 obj12 obj11 - package 
	)
   (:init 
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
          (at apn2 apt1)
          (at apn1 apt2)
          (at tru5 pos5)
          (at tru4 pos4)
          (at tru3 pos3)
          (at tru2 pos2)
          (at tru1 pos1)
          (at obj13 pos1)
          (at obj12 apt1)
          (at obj11 pos4))
   (:goal (and (at obj13 apt1)
               (at obj12 pos1)
               (at obj11 apt3))))