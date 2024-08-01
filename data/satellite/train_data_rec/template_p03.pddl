(define (problem strips-sat-x-1-3)
(:domain satellite)
(:objects
        satellite0 - satellite
        instrument0 - instrument
        thermograph1 - mode
        infrared2 - mode
        spectrograph0 - mode
        Star0 - direction
        GroundStation1 - direction
        Star2 - direction
        GroundStation3 - direction
        Star4 - direction
        GroundStation6 - direction
        GroundStation7 - direction
        Star5 - direction
        Planet8 - direction
        Phenomenon9 - direction
        Star10 - direction
        Phenomenon11 - direction
        Phenomenon12 - direction
)
(:init
        (supports instrument0 infrared2)
        (supports instrument0 thermograph1)
        (supports instrument0 spectrograph0)
        (calibration_target instrument0 Star5)
        (calibration_target instrument0 GroundStation7)
        (on_board instrument0 satellite0)
        (power_avail satellite0)
        (pointing satellite0 Star5)
)
(:goal (and
<HYPOTHESIS>
))
)
