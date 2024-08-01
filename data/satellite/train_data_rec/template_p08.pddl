(define (problem strips-sat-x-1-8)
(:domain satellite)
(:objects
        satellite0 - satellite
        instrument0 - instrument
        instrument1 - instrument
        thermograph0 - mode
        thermograph2 - mode
        image1 - mode
        GroundStation0 - direction
        Star1 - direction
        Star5 - direction
        Star7 - direction
        GroundStation8 - direction
        GroundStation9 - direction
        GroundStation2 - direction
        Star6 - direction
        Star4 - direction
        Star3 - direction
        Planet10 - direction
        Planet11 - direction
        Phenomenon12 - direction
        Star13 - direction
        Star14 - direction
        Star15 - direction
        Planet16 - direction
)
(:init
        (supports instrument0 thermograph2)
        (supports instrument0 image1)
        (calibration_target instrument0 Star6)
        (calibration_target instrument0 GroundStation2)
        (supports instrument1 image1)
        (supports instrument1 thermograph0)
        (calibration_target instrument1 Star3)
        (calibration_target instrument1 Star4)
        (on_board instrument0 satellite0)
        (on_board instrument1 satellite0)
        (power_avail satellite0)
        (pointing satellite0 Star3)
)
(:goal (and
<HYPOTHESIS>
))
)
