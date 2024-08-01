(define (problem strips-sat-x-1-11)
(:domain satellite)
(:objects
        satellite0 - satellite
        instrument0 - instrument
        instrument1 - instrument
        spectrograph0 - mode
        thermograph1 - mode
        infrared2 - mode
        infrared3 - mode
        Star0 - direction
        Star1 - direction
        Star2 - direction
        Star3 - direction
        Star4 - direction
        Star6 - direction
        GroundStation7 - direction
        GroundStation8 - direction
        Star10 - direction
        GroundStation5 - direction
        Star9 - direction
        Planet11 - direction
        Phenomenon12 - direction
        Planet13 - direction
        Planet14 - direction
        Star15 - direction
        Phenomenon16 - direction
        Star17 - direction
)
(:init
        (supports instrument0 infrared3)
        (calibration_target instrument0 GroundStation5)
        (calibration_target instrument0 Star10)
        (supports instrument1 infrared3)
        (supports instrument1 infrared2)
        (supports instrument1 thermograph1)
        (supports instrument1 spectrograph0)
        (calibration_target instrument1 Star9)
        (on_board instrument0 satellite0)
        (on_board instrument1 satellite0)
        (power_avail satellite0)
        (pointing satellite0 Star10)
)
(:goal (and
<HYPOTHESIS>
))
)
