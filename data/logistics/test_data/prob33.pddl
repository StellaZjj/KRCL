(define (problem strips-log-y-3)
   (:domain logistics)
   (:objects 
	apn1 - airplane    
    apt3 apt2 apt1 - airport	
	pos3 pos2 pos1 - location	
	cit3 cit2 cit1 - city	
	tru9 tru8 tru7 tru6 tru5 tru4 tru3 tru2 tru1 - truck	
	obj31 obj23 obj22 obj21 obj13 obj12 obj11 - package 
	)
   (:init 
          (in-city apt3 cit3)
          (in-city pos3 cit3)
          (in-city apt2 cit2)
          (in-city pos2 cit2)
          (in-city apt1 cit1)
          (in-city pos1 cit1)
          (at apn1 apt1)
          (at tru9 pos3)
          (at tru8 pos2)
          (at tru7 pos1)
          (at tru6 apt1)
          (at tru5 pos3)
          (at tru4 pos3)
          (at tru3 apt1)
          (at tru2 apt1)
          (at tru1 apt2)
          (at obj31 pos2)
          (at obj23 apt2)
          (at obj22 apt2)
          (at obj21 pos3)
          (at obj13 pos2)
          (at obj12 apt1)
          (at obj11 apt1))
   (:goal (and (at obj31 apt2)
               (at obj23 apt3)
               (at obj22 apt3)
               (at obj21 apt2)
               (at obj13 apt3)
               (at obj12 pos1)
               (at obj11 pos2))))