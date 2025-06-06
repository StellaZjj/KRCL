(define (problem strips-log-x-10)
   (:domain logistics)
   (:objects 
	apn4 apn3 apn2 apn1 - airplane    
	apt23 apt22 apt21 apt20 apt19 apt18 apt17 apt16 apt15 apt14 apt13 apt12 apt11 apt10 apt9 apt8 apt7 apt6 apt5 apt4 apt3 apt2 apt1 - airport
	pos23 pos22 pos21 pos20 pos19 pos18 pos17 pos16 pos15 pos14 pos13 pos12 pos11 pos10 pos9 pos8 pos7 pos6 pos5 pos4 pos3 pos2 pos1 - location
	cit23 cit22 cit21 cit20 cit19 cit18 cit17 cit16 cit15 cit14 cit13 cit12 cit11 cit10 cit9 cit8 cit7 cit6 cit5 cit4 cit3 cit2 cit1 - city	
	tru23 tru22 tru21 tru20 tru19 tru18 tru17 tru16 tru15 tru14 tru13 tru12 tru11 tru10 tru9 tru8 tru7 tru6 tru5 tru4 tru3 tru2 tru1 - truck	
	obj62 obj61 obj53 obj52 obj51 obj43 obj42 obj41 obj33 obj32 obj31 obj23 obj22 obj21 obj13 obj12 obj11 - package
	)
   (:init 
          (in-city apt23 cit23)
          (in-city pos23 cit23)
          (in-city apt22 cit22)
          (in-city pos22 cit22)
          (in-city apt21 cit21)
          (in-city pos21 cit21)
          (in-city apt20 cit20)
          (in-city pos20 cit20)
          (in-city apt19 cit19)
          (in-city pos19 cit19)
          (in-city apt18 cit18)
          (in-city pos18 cit18)
          (in-city apt17 cit17)
          (in-city pos17 cit17)
          (in-city apt16 cit16)
          (in-city pos16 cit16)
          (in-city apt15 cit15)
          (in-city pos15 cit15)
          (in-city apt14 cit14)
          (in-city pos14 cit14)
          (in-city apt13 cit13)
          (in-city pos13 cit13)
          (in-city apt12 cit12)
          (in-city pos12 cit12)
          (in-city apt11 cit11)
          (in-city pos11 cit11)
          (in-city apt10 cit10)
          (in-city pos10 cit10)
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
          (at apn4 apt11)
          (at apn3 apt13)
          (at apn2 apt18)
          (at apn1 apt16)
          (at tru23 pos23)
          (at tru22 pos22)
          (at tru21 pos21)
          (at tru20 pos20)
          (at tru19 pos19)
          (at tru18 pos18)
          (at tru17 pos17)
          (at tru16 pos16)
          (at tru15 pos15)
          (at tru14 pos14)
          (at tru13 pos13)
          (at tru12 pos12)
          (at tru11 pos11)
          (at tru10 pos10)
          (at tru9 pos9)
          (at tru8 pos8)
          (at tru7 pos7)
          (at tru6 pos6)
          (at tru5 pos5)
          (at tru4 pos4)
          (at tru3 pos3)
          (at tru2 pos2)
          (at tru1 pos1)
          (at obj62 apt8)
          (at obj61 apt13)
          (at obj53 apt15)
          (at obj52 apt3)
          (at obj51 apt14)
          (at obj43 pos5)
          (at obj42 pos16)
          (at obj41 apt3)
          (at obj33 pos21)
          (at obj32 pos8)
          (at obj31 pos11)
          (at obj23 apt15)
          (at obj22 pos6)
          (at obj21 pos7)
          (at obj13 pos19)
          (at obj12 pos22)
          (at obj11 pos13))
   (:goal (and (at obj62 pos3)
               (at obj61 apt4)
               (at obj53 pos19)
               (at obj52 pos9)
               (at obj51 apt3)
               (at obj43 pos21)
               (at obj42 apt21)
               (at obj41 apt9)
               (at obj33 apt20)
               (at obj32 apt13)
               (at obj31 pos3)
               (at obj23 apt15)
               (at obj22 pos8)
               (at obj21 pos1)
               (at obj13 apt9)
               (at obj12 pos2)
               (at obj11 pos13))))