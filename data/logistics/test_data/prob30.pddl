(define (problem strips-log-x-30)
   (:domain logistics)
   (:objects 
	apn3 apn2 apn1 - airplane     
	apt22 apt21 apt20 apt19 apt18 apt17 apt16 apt15 apt14 apt13 apt12 apt11 apt10 apt9 apt8 apt7 apt6 apt5 apt4 apt3 apt2 apt1 - airport	
	pos242 pos241 pos240 pos239 pos238 pos237 pos236 pos235 pos234 pos233 pos232 pos231 pos230 pos229 pos228 pos227 pos226 pos225 pos224 pos223 pos222 pos221 pos220 pos219 pos218 pos217 pos216 pos215 pos214 pos213 pos212 pos211 pos210 pos209 pos208 pos207 pos206 pos205 pos204 pos203 pos202 pos201 pos200 pos199 pos198 pos197 pos196 pos195 pos194 pos193 pos192 pos191 pos190 pos189 pos188 pos187 pos186 pos185 pos184 pos183 pos182 pos181 pos180 pos179 pos178 pos177 pos176 pos175 pos174 pos173 pos172 pos171 pos170 pos169 pos168 pos167 pos166 pos165 pos164 pos163 pos162 pos161 pos160 pos159 pos158 pos157 pos156 pos155 pos154 pos153 pos152 pos151 pos150 pos149 pos148 pos147 pos146 pos145 pos144 pos143 pos142 pos141 pos140 pos139 pos138 pos137 pos136 pos135 pos134 pos133 pos132 pos131 pos130 pos129 pos128 pos127 pos126 pos125 pos124 pos123 pos122 pos121 pos120 pos119 pos118 pos117 pos116 pos115 pos114 pos113 pos112 pos111 pos110 pos109 pos108 pos107 pos106 pos105 pos104 pos103 pos102 pos101 pos100 pos99 pos98 pos97 pos96 pos95 pos94 pos93 pos92 pos91 pos90 pos89 pos88 pos87 pos86 pos85 pos84 pos83 pos82 pos81 pos80 pos79 pos78 pos77 pos76 pos75 pos74 pos73 pos72 pos71 pos70 pos69 pos68 pos67 pos66 pos65 pos64 pos63 pos62 pos61 pos60 pos59 pos58 pos57 pos56 pos55 pos54 pos53 pos52 pos51 pos50 pos49 pos48 pos47 pos46 pos45 pos44 pos43 pos42 pos41 pos40 pos39 pos38 pos37 pos36 pos35 pos34 pos33 pos32 pos31 pos30 pos29 pos28 pos27 pos26 pos25 pos24 pos23 pos22 pos21 pos20 pos19 pos18 pos17 pos16 pos15 pos14 pos13 pos12 pos11 pos10 pos9 pos8 pos7 pos6 pos5 pos4 pos3 pos2 pos1 - location
	cit22 cit21 cit20 cit19 cit18 cit17 cit16 cit15 cit14 cit13 cit12 cit11 cit10 cit9 cit8 cit7 cit6 cit5 cit4 cit3 cit2 cit1 - city	
	tru80 tru79 tru78 tru77 tru76 tru75 tru74 tru73 tru72 tru71 tru70 tru69 tru68 tru67 tru66 tru65 tru64 tru63 tru62 tru61 tru60 tru59 tru58 tru57 tru56 tru55 tru54 tru53 tru52 tru51 tru50 tru49 tru48 tru47 tru46 tru45 tru44 tru43 tru42 tru41 tru40 tru39 tru38 tru37 tru36 tru35 tru34 tru33 tru32 tru31 tru30 tru29 tru28 tru27 tru26 tru25 tru24 tru23 tru22 tru21 tru20 tru19 tru18 tru17 tru16 tru15 tru14 tru13 tru12 tru11 tru10 tru9 tru8 tru7 tru6 tru5 tru4 tru3 tru2 tru1 - truck	
	obj53 obj52 obj51 obj43 obj42 obj41 obj33 obj32 obj31 obj23 obj22 obj21 obj13 obj12 obj11 - package 
	)
   (:init 
          (in-city apt22 cit22)
          (in-city pos242 cit22)
          (in-city pos241 cit22)
          (in-city pos240 cit22)
          (in-city pos239 cit22)
          (in-city pos238 cit22)
          (in-city pos237 cit22)
          (in-city pos236 cit22)
          (in-city pos235 cit22)
          (in-city pos234 cit22)
          (in-city pos233 cit22)
          (in-city pos232 cit22)
          (in-city apt21 cit21)
          (in-city pos231 cit21)
          (in-city pos230 cit21)
          (in-city pos229 cit21)
          (in-city pos228 cit21)
          (in-city pos227 cit21)
          (in-city pos226 cit21)
          (in-city pos225 cit21)
          (in-city pos224 cit21)
          (in-city pos223 cit21)
          (in-city pos222 cit21)
          (in-city pos221 cit21)
          (in-city apt20 cit20)
          (in-city pos220 cit20)
          (in-city pos219 cit20)
          (in-city pos218 cit20)
          (in-city pos217 cit20)
          (in-city pos216 cit20)
          (in-city pos215 cit20)
          (in-city pos214 cit20)
          (in-city pos213 cit20)
          (in-city pos212 cit20)
          (in-city pos211 cit20)
          (in-city pos210 cit20)
          (in-city apt19 cit19)
          (in-city pos209 cit19)
          (in-city pos208 cit19)
          (in-city pos207 cit19)
          (in-city pos206 cit19)
          (in-city pos205 cit19)
          (in-city pos204 cit19)
          (in-city pos203 cit19)
          (in-city pos202 cit19)
          (in-city pos201 cit19)
          (in-city pos200 cit19)
          (in-city pos199 cit19)
          (in-city apt18 cit18)
          (in-city pos198 cit18)
          (in-city pos197 cit18)
          (in-city pos196 cit18)
          (in-city pos195 cit18)
          (in-city pos194 cit18)
          (in-city pos193 cit18)
          (in-city pos192 cit18)
          (in-city pos191 cit18)
          (in-city pos190 cit18)
          (in-city pos189 cit18)
          (in-city pos188 cit18)
          (in-city apt17 cit17)
          (in-city pos187 cit17)
          (in-city pos186 cit17)
          (in-city pos185 cit17)
          (in-city pos184 cit17)
          (in-city pos183 cit17)
          (in-city pos182 cit17)
          (in-city pos181 cit17)
          (in-city pos180 cit17)
          (in-city pos179 cit17)
          (in-city pos178 cit17)
          (in-city pos177 cit17)
          (in-city apt16 cit16)
          (in-city pos176 cit16)
          (in-city pos175 cit16)
          (in-city pos174 cit16)
          (in-city pos173 cit16)
          (in-city pos172 cit16)
          (in-city pos171 cit16)
          (in-city pos170 cit16)
          (in-city pos169 cit16)
          (in-city pos168 cit16)
          (in-city pos167 cit16)
          (in-city pos166 cit16)
          (in-city apt15 cit15)
          (in-city pos165 cit15)
          (in-city pos164 cit15)
          (in-city pos163 cit15)
          (in-city pos162 cit15)
          (in-city pos161 cit15)
          (in-city pos160 cit15)
          (in-city pos159 cit15)
          (in-city pos158 cit15)
          (in-city pos157 cit15)
          (in-city pos156 cit15)
          (in-city pos155 cit15)
          (in-city apt14 cit14)
          (in-city pos154 cit14)
          (in-city pos153 cit14)
          (in-city pos152 cit14)
          (in-city pos151 cit14)
          (in-city pos150 cit14)
          (in-city pos149 cit14)
          (in-city pos148 cit14)
          (in-city pos147 cit14)
          (in-city pos146 cit14)
          (in-city pos145 cit14)
          (in-city pos144 cit14)
          (in-city apt13 cit13)
          (in-city pos143 cit13)
          (in-city pos142 cit13)
          (in-city pos141 cit13)
          (in-city pos140 cit13)
          (in-city pos139 cit13)
          (in-city pos138 cit13)
          (in-city pos137 cit13)
          (in-city pos136 cit13)
          (in-city pos135 cit13)
          (in-city pos134 cit13)
          (in-city pos133 cit13)
          (in-city apt12 cit12)
          (in-city pos132 cit12)
          (in-city pos131 cit12)
          (in-city pos130 cit12)
          (in-city pos129 cit12)
          (in-city pos128 cit12)
          (in-city pos127 cit12)
          (in-city pos126 cit12)
          (in-city pos125 cit12)
          (in-city pos124 cit12)
          (in-city pos123 cit12)
          (in-city pos122 cit12)
          (in-city apt11 cit11)
          (in-city pos121 cit11)
          (in-city pos120 cit11)
          (in-city pos119 cit11)
          (in-city pos118 cit11)
          (in-city pos117 cit11)
          (in-city pos116 cit11)
          (in-city pos115 cit11)
          (in-city pos114 cit11)
          (in-city pos113 cit11)
          (in-city pos112 cit11)
          (in-city pos111 cit11)
          (in-city apt10 cit10)
          (in-city pos110 cit10)
          (in-city pos109 cit10)
          (in-city pos108 cit10)
          (in-city pos107 cit10)
          (in-city pos106 cit10)
          (in-city pos105 cit10)
          (in-city pos104 cit10)
          (in-city pos103 cit10)
          (in-city pos102 cit10)
          (in-city pos101 cit10)
          (in-city pos100 cit10)
          (in-city apt9 cit9)
          (in-city pos99 cit9)
          (in-city pos98 cit9)
          (in-city pos97 cit9)
          (in-city pos96 cit9)
          (in-city pos95 cit9)
          (in-city pos94 cit9)
          (in-city pos93 cit9)
          (in-city pos92 cit9)
          (in-city pos91 cit9)
          (in-city pos90 cit9)
          (in-city pos89 cit9)
          (in-city apt8 cit8)
          (in-city pos88 cit8)
          (in-city pos87 cit8)
          (in-city pos86 cit8)
          (in-city pos85 cit8)
          (in-city pos84 cit8)
          (in-city pos83 cit8)
          (in-city pos82 cit8)
          (in-city pos81 cit8)
          (in-city pos80 cit8)
          (in-city pos79 cit8)
          (in-city pos78 cit8)
          (in-city apt7 cit7)
          (in-city pos77 cit7)
          (in-city pos76 cit7)
          (in-city pos75 cit7)
          (in-city pos74 cit7)
          (in-city pos73 cit7)
          (in-city pos72 cit7)
          (in-city pos71 cit7)
          (in-city pos70 cit7)
          (in-city pos69 cit7)
          (in-city pos68 cit7)
          (in-city pos67 cit7)
          (in-city apt6 cit6)
          (in-city pos66 cit6)
          (in-city pos65 cit6)
          (in-city pos64 cit6)
          (in-city pos63 cit6)
          (in-city pos62 cit6)
          (in-city pos61 cit6)
          (in-city pos60 cit6)
          (in-city pos59 cit6)
          (in-city pos58 cit6)
          (in-city pos57 cit6)
          (in-city pos56 cit6)
          (in-city apt5 cit5)
          (in-city pos55 cit5)
          (in-city pos54 cit5)
          (in-city pos53 cit5)
          (in-city pos52 cit5)
          (in-city pos51 cit5)
          (in-city pos50 cit5)
          (in-city pos49 cit5)
          (in-city pos48 cit5)
          (in-city pos47 cit5)
          (in-city pos46 cit5)
          (in-city pos45 cit5)
          (in-city apt4 cit4)
          (in-city pos44 cit4)
          (in-city pos43 cit4)
          (in-city pos42 cit4)
          (in-city pos41 cit4)
          (in-city pos40 cit4)
          (in-city pos39 cit4)
          (in-city pos38 cit4)
          (in-city pos37 cit4)
          (in-city pos36 cit4)
          (in-city pos35 cit4)
          (in-city pos34 cit4)
          (in-city apt3 cit3)
          (in-city pos33 cit3)
          (in-city pos32 cit3)
          (in-city pos31 cit3)
          (in-city pos30 cit3)
          (in-city pos29 cit3)
          (in-city pos28 cit3)
          (in-city pos27 cit3)
          (in-city pos26 cit3)
          (in-city pos25 cit3)
          (in-city pos24 cit3)
          (in-city pos23 cit3)
          (in-city apt2 cit2)
          (in-city pos22 cit2)
          (in-city pos21 cit2)
          (in-city pos20 cit2)
          (in-city pos19 cit2)
          (in-city pos18 cit2)
          (in-city pos17 cit2)
          (in-city pos16 cit2)
          (in-city pos15 cit2)
          (in-city pos14 cit2)
          (in-city pos13 cit2)
          (in-city pos12 cit2)
          (in-city apt1 cit1)
          (in-city pos11 cit1)
          (in-city pos10 cit1)
          (in-city pos9 cit1)
          (in-city pos8 cit1)
          (in-city pos7 cit1)
          (in-city pos6 cit1)
          (in-city pos5 cit1)
          (in-city pos4 cit1)
          (in-city pos3 cit1)
          (in-city pos2 cit1)
          (in-city pos1 cit1)
          (at apn3 apt20)
          (at apn2 apt8)
          (at apn1 apt14)
          (at tru80 pos232)
          (at tru79 pos227)
          (at tru78 pos213)
          (at tru77 pos205)
          (at tru76 pos191)
          (at tru75 pos181)
          (at tru74 pos167)
          (at tru73 pos163)
          (at tru72 pos147)
          (at tru71 pos141)
          (at tru70 pos126)
          (at tru69 pos111)
          (at tru68 pos108)
          (at tru67 pos96)
          (at tru66 pos85)
          (at tru65 pos67)
          (at tru64 pos57)
          (at tru63 pos48)
          (at tru62 pos34)
          (at tru61 pos29)
          (at tru60 pos18)
          (at tru59 pos10)
          (at tru58 pos5)
          (at tru57 pos218)
          (at tru56 pos54)
          (at tru55 pos203)
          (at tru54 pos46)
          (at tru53 pos118)
          (at tru52 pos229)
          (at tru51 pos26)
          (at tru50 pos111)
          (at tru49 pos94)
          (at tru48 pos187)
          (at tru47 pos61)
          (at tru46 pos29)
          (at tru45 pos149)
          (at tru44 pos80)
          (at tru43 pos46)
          (at tru42 pos19)
          (at tru41 pos165)
          (at tru40 pos148)
          (at tru39 pos68)
          (at tru38 pos107)
          (at tru37 pos226)
          (at tru36 pos112)
          (at tru35 pos226)
          (at tru34 apt15)
          (at tru33 apt7)
          (at tru32 pos80)
          (at tru31 pos240)
          (at tru30 pos172)
          (at tru29 pos83)
          (at tru28 pos161)
          (at tru27 apt12)
          (at tru26 pos153)
          (at tru25 pos84)
          (at tru24 pos106)
          (at tru23 pos109)
          (at tru22 pos113)
          (at tru21 pos93)
          (at tru20 pos58)
          (at tru19 pos37)
          (at tru18 pos50)
          (at tru17 pos54)
          (at tru16 pos69)
          (at tru15 pos227)
          (at tru14 pos174)
          (at tru13 pos10)
          (at tru12 pos21)
          (at tru11 pos42)
          (at tru10 pos77)
          (at tru9 pos86)
          (at tru8 pos128)
          (at tru7 pos203)
          (at tru6 apt3)
          (at tru5 pos134)
          (at tru4 apt6)
          (at tru3 pos17)
          (at tru2 pos113)
          (at tru1 pos144)
          (at obj53 pos51)
          (at obj52 pos161)
          (at obj51 apt11)
          (at obj43 pos80)
          (at obj42 pos106)
          (at obj41 pos154)
          (at obj33 pos166)
          (at obj32 apt21)
          (at obj31 pos136)
          (at obj23 pos14)
          (at obj22 pos65)
          (at obj21 pos112)
          (at obj13 pos73)
          (at obj12 pos83)
          (at obj11 apt6))
   (:goal (and (at obj53 apt14)
               (at obj52 pos218)
               (at obj51 pos52)
               (at obj43 pos213)
               (at obj42 pos4)
               (at obj41 pos216)
               (at obj33 pos16)
               (at obj32 pos120)
               (at obj31 apt4)
               (at obj23 pos33)
               (at obj22 pos91)
               (at obj21 pos94)
               (at obj13 apt5)
               (at obj12 pos118)
               (at obj11 pos49))))