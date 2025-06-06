(define (problem freecell-f3-c3-s2-i1-00-13
)(:domain freecell)
(:objects
          C0
          H0 HA H2 H3
 - card
          CELLN0 CELLN1 CELLN2 CELLN3
 - cellnum
          COLN0 COLN1 COLN2 COLN3
 - colnum
          N0 N1 N2 N3
 - num
           C H
 - suit
)
(:init
(VALUE C0 N0)
(VALUE H0 N0)
(VALUE HA N1)
(VALUE H2 N2)
(VALUE H3 N3)
(CELLSUCCESSOR CELLN1 CELLN0)
(CELLSUCCESSOR CELLN2 CELLN1)
(CELLSUCCESSOR CELLN3 CELLN2)
(COLSUCCESSOR COLN1 COLN0)
(COLSUCCESSOR COLN2 COLN1)
(COLSUCCESSOR COLN3 COLN2)
(SUCCESSOR N1 N0)
(SUCCESSOR N2 N1)
(SUCCESSOR N3 N2)
(SUIT C0 C)
(SUIT H0 H)
(SUIT HA H)
(SUIT H2 H)
(SUIT H3 H)
(HOME C0)
(HOME H0)
(CELLSPACE CELLN3)
(COLSPACE COLN2)

(BOTTOMCOL H3)
(ON HA H3)
(ON H2 HA)
(CLEAR H2)
)
(:goal
(and
(HOME C0)
(HOME H3)
)
)
)