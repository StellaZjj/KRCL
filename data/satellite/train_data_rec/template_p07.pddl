(define (problem strips-sat-x-1-7)
(:domain satellite)
(:objects
        satellite0 - satellite
        instrument0 - instrument
        infrared2 - mode
        thermograph1 - mode
        spectrograph0 - mode
        Star0 - direction
        GroundStation1 - direction
        GroundStation3 - direction
        Star4 - direction
        Star5 - direction
        GroundStation6 - direction
        GroundStation9 - direction
        GroundStation7 - direction
        GroundStation8 - direction
        Star2 - direction
        Planet10 - direction
        Planet11 - direction
        Planet12 - direction
        Star13 - direction
        Star14 - direction
        Star15 - direction
        Phenomenon16 - direction
)
(:init
        (supports instrument0 spectrograph0)
        (supports instrument0 thermograph1)
        (supports instrument0 infrared2)
        (calibration_target instrument0 Star2)
        (calibration_target instrument0 GroundStation8)
        (calibration_target instrument0 GroundStation7)
        (on_board instrument0 satellite0)
        (power_avail satellite0)
        (pointing satellite0 Star15)
)
(:goal (and
<HYPOTHESIS>
))
)
