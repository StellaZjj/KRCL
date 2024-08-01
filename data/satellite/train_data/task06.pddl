(define (problem strips-sat-x-1-6)
(:domain satellite)
(:objects
        satellite0 - satellite
        instrument0 - instrument
        satellite1 - satellite
        instrument1 - instrument
        thermograph1 - mode
        infrared2 - mode
        spectrograph0 - mode
        Star0 - direction
        GroundStation1 - direction
        Star5 - direction
        GroundStation6 - direction
        GroundStation7 - direction
        Star4 - direction
        Star2 - direction
        GroundStation3 - direction
        Planet8 - direction
        Phenomenon9 - direction
        Star10 - direction
        Phenomenon11 - direction
)
(:init
        (supports instrument0 thermograph1)
        (supports instrument0 infrared2)
        (calibration_target instrument0 Star4)
        (on_board instrument0 satellite0)
        (power_avail satellite0)
        (pointing satellite0 Star0)
        (supports instrument1 thermograph1)
        (supports instrument1 infrared2)
        (supports instrument1 spectrograph0)
        (calibration_target instrument1 GroundStation3)
        (calibration_target instrument1 Star2)
        (on_board instrument1 satellite1)
        (power_avail satellite1)
        (pointing satellite1 GroundStation6)
)
(:goal (and
        (pointing satellite1 Star0)
        (have_image Planet8 thermograph1)
        (have_image Phenomenon9 spectrograph0)
        (have_image Star10 spectrograph0)
        (have_image Phenomenon11 thermograph1)
))

)
