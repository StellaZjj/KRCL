(define (problem strips-sat-x-1-5)
(:domain satellite)
(:objects
        satellite0 - satellite
        instrument0 - instrument
        instrument1 - instrument
        satellite1 - satellite
        instrument2 - instrument
        instrument3 - instrument
        image1 - mode
        thermograph0 - mode
        thermograph2 - mode
        GroundStation0 - direction
        GroundStation2 - direction
        Star3 - direction
        Star4 - direction
        Star6 - direction
        Star7 - direction
        Star5 - direction
        Star1 - direction
        Planet8 - direction
        Phenomenon9 - direction
        Star10 - direction
        Planet11 - direction
)
(:init
        (supports instrument0 thermograph0)
        (supports instrument0 image1)
        (calibration_target instrument0 Star7)
        (supports instrument1 image1)
        (supports instrument1 thermograph0)
        (calibration_target instrument1 Star5)
        (on_board instrument0 satellite0)
        (on_board instrument1 satellite0)
        (power_avail satellite0)
        (pointing satellite0 Star7)
        (supports instrument2 thermograph2)
        (supports instrument2 image1)
        (calibration_target instrument2 Star5)
        (calibration_target instrument2 Star7)
        (supports instrument3 thermograph2)
        (supports instrument3 image1)
        (supports instrument3 thermograph0)
        (calibration_target instrument3 Star1)
        (on_board instrument2 satellite1)
        (on_board instrument3 satellite1)
        (power_avail satellite1)
        (pointing satellite1 Star7)
)
(:goal (and
        (pointing satellite0 Star6)
        (have_image Planet8 thermograph0)
        (have_image Phenomenon9 image1)
        (have_image Star10 image1)
        (have_image Planet11 thermograph2)
))

)
