(define (problem strips-sat-x-1-12)
(:domain satellite)
(:objects
        satellite0 - satellite
        instrument0 - instrument
        thermograph0 - mode
        image1 - mode
        thermograph2 - mode
        thermograph3 - mode
        GroundStation1 - direction
        Star2 - direction
        GroundStation3 - direction
        GroundStation4 - direction
        Star6 - direction
        GroundStation7 - direction
        GroundStation8 - direction
        GroundStation9 - direction
        GroundStation10 - direction
        GroundStation5 - direction
        GroundStation0 - direction
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
        (supports instrument0 thermograph2)
        (supports instrument0 image1)
        (supports instrument0 thermograph0)
        (calibration_target instrument0 GroundStation0)
        (calibration_target instrument0 GroundStation5)
        (calibration_target instrument0 GroundStation10)
        (on_board instrument0 satellite0)
        (power_avail satellite0)
        (pointing satellite0 Planet11)
)
(:goal (and
<HYPOTHESIS>
))
)
