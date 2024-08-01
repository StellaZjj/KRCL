(define (problem strips-sat-x-1-1)
(:domain satellite)
(:objects
        satellite0 - satellite
        instrument0 - instrument
        thermograph0 - mode
        image1 - mode
        thermograph2 - mode
        GroundStation0 - direction
        Star1 - direction
        Star3 - direction
        Star4 - direction
        Star5 - direction
        Star6 - direction
        GroundStation2 - direction
        Phenomenon7 - direction
        Phenomenon8 - direction
        Phenomenon9 - direction
)
(:init
        (supports instrument0 thermograph0)
        (supports instrument0 thermograph2)
        (supports instrument0 image1)
        (calibration_target instrument0 GroundStation2)
        (on_board instrument0 satellite0)
        (power_avail satellite0)
        (pointing satellite0 Star6)
)
(:goal (and
        (have_image Phenomenon7 image1)
        (have_image Phenomenon8 image1)
        (have_image Phenomenon9 thermograph0)
))

)
