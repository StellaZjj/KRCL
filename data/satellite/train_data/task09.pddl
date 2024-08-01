(define (problem strips-sat-x-1-9)
(:domain satellite)
(:objects
        satellite0 - satellite
        instrument0 - instrument
        instrument1 - instrument
        instrument2 - instrument
        satellite1 - satellite
        instrument3 - instrument
        satellite2 - satellite
        instrument4 - instrument
        instrument5 - instrument
        thermograph2 - mode
        thermograph0 - mode
        image1 - mode
        Star5 - direction
        Star6 - direction
        Star7 - direction
        GroundStation9 - direction
        GroundStation8 - direction
        Star1 - direction
        GroundStation2 - direction
        Star3 - direction
        Star4 - direction
        GroundStation0 - direction
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
        (supports instrument3 image1)
        (calibration_target instrument3 GroundStation2)
        (on_board instrument3 satellite1)
        (power_avail satellite1)
        (pointing satellite1 Planet10)
        (supports instrument4 thermograph2)
        (supports instrument4 image1)
        (calibration_target instrument4 Star4)
        (calibration_target instrument4 Star3)
        (supports instrument5 image1)
        (supports instrument5 thermograph0)
        (calibration_target instrument5 GroundStation0)
        (on_board instrument4 satellite2)
        (on_board instrument5 satellite2)
        (power_avail satellite2)
        (pointing satellite2 GroundStation2)
)
(:goal (and
        (have_image Planet10 thermograph2)
        (have_image Planet11 thermograph0)
        (have_image Phenomenon12 thermograph2)
        (have_image Star13 image1)
        (have_image Star14 image1)
        (have_image Star15 thermograph2)
))

)
