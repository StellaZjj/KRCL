(define (problem strips-sat-x-1-2)
(:domain satellite)
(:objects
        satellite0 - satellite
        instrument0 - instrument
        infrared2 - mode
        spectrograph0 - mode
        thermograph1 - mode
        GroundStation1 - direction
        Star2 - direction
        GroundStation3 - direction
        Star4 - direction
        Star5 - direction
        GroundStation6 - direction
        Star0 - direction
        Planet7 - direction
        Star8 - direction
        Star9 - direction
)
(:init
        (supports instrument0 thermograph1)
        (supports instrument0 infrared2)
        (supports instrument0 spectrograph0)
        (calibration_target instrument0 Star0)
        (on_board instrument0 satellite0)
        (power_avail satellite0)
        (pointing satellite0 Star8)
)
(:goal (and
        (pointing satellite0 GroundStation1)
        (have_image Planet7 spectrograph0)
        (have_image Star8 infrared2)
        (have_image Star9 thermograph1)
))

)
