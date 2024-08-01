(define (problem strips-sat-x-1-3)
(:domain satellite)
(:objects
        satellite0 - satellite
        instrument0 - instrument
        instrument1 - instrument
        thermograph0 - mode
        thermograph2 - mode
        image1 - mode
        Star1 - direction
        GroundStation2 - direction
        Star4 - direction
        Star6 - direction
        Star7 - direction
        Star5 - direction
        GroundStation0 - direction
        Star3 - direction
        Planet8 - direction
        Phenomenon9 - direction
        Star10 - direction
        Planet11 - direction
        Planet12 - direction
)
(:init
        (supports instrument0 thermograph2)
        (supports instrument0 thermograph0)
        (supports instrument0 image1)
        (calibration_target instrument0 GroundStation0)
        (calibration_target instrument0 Star5)
        (supports instrument1 thermograph2)
        (calibration_target instrument1 Star3)
        (on_board instrument0 satellite0)
        (on_board instrument1 satellite0)
        (power_avail satellite0)
        (pointing satellite0 Planet12)
)
(:goal (and
        (have_image Planet8 thermograph0)
        (have_image Phenomenon9 image1)
        (have_image Star10 image1)
        (have_image Planet11 thermograph2)
        (have_image Planet12 image1)
))

)
