(define (problem strips-sat-x-1-9)
(:domain satellite)
(:objects
        satellite0 - satellite
        instrument0 - instrument
        instrument1 - instrument
        instrument2 - instrument
        image1 - mode
        thermograph0 - mode
        thermograph2 - mode
        GroundStation0 - direction
        GroundStation2 - direction
        Star3 - direction
        Star4 - direction
        Star5 - direction
        Star6 - direction
        Star7 - direction
        GroundStation9 - direction
        GroundStation8 - direction
        Star1 - direction
        Planet10 - direction
        Planet11 - direction
        Phenomenon12 - direction
        Star13 - direction
        Star14 - direction
        Star15 - direction
)
(:init
        (supports instrument0 thermograph0)
        (supports instrument0 thermograph2)
        (supports instrument0 image1)
        (calibration_target instrument0 GroundStation9)
        (supports instrument1 thermograph2)
        (supports instrument1 thermograph0)
        (supports instrument1 image1)
        (calibration_target instrument1 GroundStation8)
        (supports instrument2 thermograph2)
        (supports instrument2 image1)
        (calibration_target instrument2 Star1)
        (on_board instrument0 satellite0)
        (on_board instrument1 satellite0)
        (on_board instrument2 satellite0)
        (power_avail satellite0)
        (pointing satellite0 Planet10)
)
(:goal (and
<HYPOTHESIS>
))
)
