(define (problem strips-sat-x-1-7)
(:domain satellite)
(:objects
        satellite0 - satellite
        instrument0 - instrument
        instrument1 - instrument
        satellite1 - satellite
        instrument2 - instrument
        image1 - mode
        thermograph2 - mode
        thermograph0 - mode
        GroundStation0 - direction
        Star1 - direction
        Star5 - direction
        Star7 - direction
        GroundStation9 - direction
        GroundStation2 - direction
        Star6 - direction
        Star3 - direction
        Star4 - direction
        GroundStation8 - direction
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
        (calibration_target instrument1 Star3)
        (calibration_target instrument1 Star4)
        (on_board instrument0 satellite0)
        (on_board instrument1 satellite0)
        (power_avail satellite0)
        (pointing satellite0 Star3)
        (supports instrument2 thermograph2)
        (supports instrument2 image1)
        (supports instrument2 thermograph0)
        (calibration_target instrument2 GroundStation8)
        (calibration_target instrument2 Star4)
        (on_board instrument2 satellite1)
        (power_avail satellite1)
        (pointing satellite1 Star14)
)
(:goal (and
        (have_image Planet10 thermograph2)
        (have_image Planet11 thermograph0)
        (have_image Phenomenon12 thermograph2)
        (have_image Star13 image1)
        (have_image Star14 image1)
        (have_image Star15 thermograph2)
        (have_image Planet16 thermograph0)
))

)
