(define (problem strips-sat-x-1-8)
(:domain satellite)
(:objects
        satellite0 - satellite
        instrument0 - instrument
        satellite1 - satellite
        instrument1 - instrument
        thermograph1 - mode
        infrared2 - mode
        spectrograph0 - mode
        GroundStation1 - direction
        GroundStation3 - direction
        Star4 - direction
        Star5 - direction
        GroundStation7 - direction
        GroundStation8 - direction
        Star2 - direction
        GroundStation9 - direction
        Star0 - direction
        GroundStation6 - direction
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
        (calibration_target instrument0 Star2)
        (calibration_target instrument0 GroundStation8)
        (calibration_target instrument0 GroundStation7)
        (on_board instrument0 satellite0)
        (power_avail satellite0)
        (pointing satellite0 Star15)
        (supports instrument1 spectrograph0)
        (supports instrument1 thermograph1)
        (supports instrument1 infrared2)
        (calibration_target instrument1 GroundStation6)
        (calibration_target instrument1 Star0)
        (calibration_target instrument1 GroundStation9)
        (on_board instrument1 satellite1)
        (power_avail satellite1)
        (pointing satellite1 Phenomenon16)
)
(:goal (and
        (have_image Planet10 infrared2)
        (have_image Planet11 thermograph1)
        (have_image Planet12 spectrograph0)
        (have_image Star13 spectrograph0)
        (have_image Star14 infrared2)
        (have_image Star15 infrared2)
        (have_image Phenomenon16 infrared2)
))

)
