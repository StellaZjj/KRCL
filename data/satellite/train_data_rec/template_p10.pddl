(define (problem strips-sat-x-1-10)
(:domain satellite)
(:objects
        satellite0 - satellite
        instrument0 - instrument
        instrument1 - instrument
        spectrograph0 - mode
        thermograph1 - mode
        infrared2 - mode
        Star0 - direction
        GroundStation1 - direction
        Star2 - direction
        GroundStation3 - direction
        Star4 - direction
        Star5 - direction
        GroundStation7 - direction
        GroundStation8 - direction
        GroundStation6 - direction
        GroundStation9 - direction
        Planet10 - direction
        Planet11 - direction
        Planet12 - direction
        Star13 - direction
        Star14 - direction
        Star15 - direction
)
(:init
        (supports instrument0 infrared2)
        (supports instrument0 spectrograph0)
        (calibration_target instrument0 GroundStation6)
        (supports instrument1 infrared2)
        (supports instrument1 thermograph1)
        (calibration_target instrument1 GroundStation9)
        (on_board instrument0 satellite0)
        (on_board instrument1 satellite0)
        (power_avail satellite0)
        (pointing satellite0 Star2)
)
(:goal (and
<HYPOTHESIS>
))
)
