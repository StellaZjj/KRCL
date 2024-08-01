(define (problem strips-sat-x-1-11)
(:domain satellite)
(:objects
        satellite0 - satellite
        instrument0 - instrument
        satellite1 - satellite
        instrument1 - instrument
        instrument2 - instrument
        satellite2 - satellite
        instrument3 - instrument
        instrument4 - instrument
        thermograph0 - mode
        thermograph3 - mode
        thermograph2 - mode
        image1 - mode
        GroundStation1 - direction
        GroundStation3 - direction
        GroundStation4 - direction
        Star6 - direction
        GroundStation10 - direction
        GroundStation5 - direction
        GroundStation0 - direction
        GroundStation7 - direction
        GroundStation9 - direction
        Star2 - direction
        GroundStation8 - direction
        Planet11 - direction
        Planet12 - direction
        Star13 - direction
        Phenomenon14 - direction
        Star15 - direction
        Star16 - direction
        Phenomenon17 - direction
)
(:init
        (supports instrument0 thermograph3)
        (calibration_target instrument0 GroundStation0)
        (calibration_target instrument0 GroundStation5)
        (calibration_target instrument0 GroundStation10)
        (on_board instrument0 satellite0)
        (power_avail satellite0)
        (pointing satellite0 Planet11)
        (supports instrument1 thermograph2)
        (calibration_target instrument1 GroundStation7)
        (supports instrument2 thermograph0)
        (supports instrument2 image1)
        (supports instrument2 thermograph2)
        (calibration_target instrument2 GroundStation8)
        (calibration_target instrument2 GroundStation9)
        (on_board instrument1 satellite1)
        (on_board instrument2 satellite1)
        (power_avail satellite1)
        (pointing satellite1 Planet11)
        (supports instrument3 thermograph0)
        (calibration_target instrument3 Star2)
        (supports instrument4 thermograph2)
        (calibration_target instrument4 GroundStation8)
        (on_board instrument3 satellite2)
        (on_board instrument4 satellite2)
        (power_avail satellite2)
        (pointing satellite2 Phenomenon14)
)
(:goal (and
        (pointing satellite1 Star6)
        (have_image Planet11 thermograph3)
        (have_image Planet12 image1)
        (have_image Star13 thermograph0)
        (have_image Phenomenon14 thermograph3)
        (have_image Star15 image1)
        (have_image Star16 thermograph0)
        (have_image Phenomenon17 thermograph3)
))

)