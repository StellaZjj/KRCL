(define (problem pb29)
   (:domain mystery-strips)
   (:objects papaya scallop melon popover pear shrimp broccoli pork
             achievement excitement abrasion hangover anger laceration anxiety
             angina grief prostatitis boils sciatica jealousy arizona
             pennsylvania alsace quebec manitoba bavaria oregon kentucky moravia
             earth pluto neptune uranus)
   (:init (food papaya)
          (food scallop)
          (food melon)
          (food popover)
          (food pear)
          (food shrimp)
          (food broccoli)
          (food pork)
          (pleasure achievement)
          (pleasure excitement)
          (pain abrasion)
          (pain hangover)
          (pain anger)
          (pain laceration)
          (pain anxiety)
          (pain angina)
          (pain grief)
          (pain prostatitis)
          (pain boils)
          (pain sciatica)
          (pain jealousy)
          (province arizona)
          (province pennsylvania)
          (province alsace)
          (province quebec)
          (province manitoba)
          (province bavaria)
          (province oregon)
          (province kentucky)
          (province moravia)
          (planet earth)
          (planet pluto)
          (planet neptune)
          (planet uranus)
          (locale scallop oregon)
          (locale melon moravia)
          (eats melon shrimp)
          (craves anxiety melon)
          (eats popover shrimp)
          (craves achievement scallop)
          (craves excitement pork)
          (eats scallop pork)
          (eats melon scallop)
          (craves abrasion papaya)
          (attacks bavaria oregon)
          (eats shrimp melon)
          (eats broccoli pork)
          (attacks arizona pennsylvania)
          (eats pork scallop)
          (orbits earth pluto)
          (locale popover bavaria)
          (eats pear papaya)
          (harmony excitement uranus)
          (eats papaya popover)
          (craves laceration melon)
          (eats popover papaya)
          (eats papaya pear)
          (attacks manitoba bavaria)
          (craves angina melon)
          (craves boils broccoli)
          (attacks oregon kentucky)
          (eats shrimp broccoli)
          (craves hangover scallop)
          (craves grief shrimp)
          (locale pear arizona)
          (eats shrimp popover)
          (craves anger scallop)
          (craves sciatica pork)
          (locale papaya quebec)
          (orbits pluto neptune)
          (attacks pennsylvania alsace)
          (eats pork pear)
          (attacks quebec manitoba)
          (craves jealousy pork)
          (eats pork broccoli)
          (eats pear pork)
          (attacks alsace quebec)
          (orbits neptune uranus)
          (eats scallop melon)
          (locale broccoli alsace)
          (locale shrimp kentucky)
          (craves prostatitis shrimp)
          (locale pork bavaria)
          (attacks kentucky moravia)
          (harmony achievement uranus)
          (eats broccoli shrimp))
   (:goal (and (craves jealousy shrimp)
               (craves prostatitis shrimp))))