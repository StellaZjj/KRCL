(define (problem strips-sat-x-1-5)
(:domain satellite)
(:objects
        satellite0 - satellite
        instrument0 - instrument
        instrument1 - instrument
        thermograph2 - mode
        image1 - mode
        thermograph0 - mode
        GroundStation0 - direction
        Star1 - direction
        GroundStation2 - direction
        Star3 - direction
        Star4 - direction
        Star6 - direction
        Star7 - direction
        Star5 - direction
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
        (supports instrument1 thermograph2)
        (calibration_target instrument1 Star5)
        (on_board instrument0 satellite0)
        (on_board instrument1 satellite0)
        (power_avail satellite0)
        (pointing satellite0 Star7)
)
(:goal (and
<HYPOTHESIS>
))
)
