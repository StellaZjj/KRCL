(define (problem strips-sat-x-1-4)
(:domain satellite)
(:objects
        satellite0 - satellite
        instrument0 - instrument
        thermograph0 - mode
        thermograph2 - mode
        image1 - mode
        Star1 - direction
        GroundStation2 - direction
        Star3 - direction
        Star4 - direction
        Star6 - direction
        Star7 - direction
        Star5 - direction
        GroundStation0 - direction
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
        (on_board instrument0 satellite0)
        (power_avail satellite0)
        (pointing satellite0 Planet12)
)
(:goal (and
<HYPOTHESIS>
))
)
