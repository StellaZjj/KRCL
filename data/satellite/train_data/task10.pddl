(define (problem strips-sat-x-1-10)
(:domain satellite)
(:objects
        satellite0 - satellite
        instrument0 - instrument
        instrument1 - instrument
        satellite1 - satellite
        instrument2 - instrument
        satellite2 - satellite
        instrument3 - instrument
        instrument4 - instrument
        instrument5 - instrument
        infrared2 - mode
        thermograph1 - mode
        spectrograph0 - mode
        Star0 - direction
        Star5 - direction
        GroundStation8 - direction
        GroundStation9 - direction
        GroundStation7 - direction
        Star2 - direction
        GroundStation3 - direction
        Star4 - direction
        GroundStation1 - direction
        GroundStation6 - direction
        Planet10 - direction
        Planet11 - direction
        Planet12 - direction
        Star13 - direction
        Star14 - direction
        Star15 - direction
)
(:init
        (supports instrument0 infrared2)
        (calibration_target instrument0 GroundStation6)
        (supports instrument1 infrared2)
        (supports instrument1 thermograph1)
        (calibration_target instrument1 GroundStation9)
        (on_board instrument0 satellite0)
        (on_board instrument1 satellite0)
        (power_avail satellite0)
        (pointing satellite0 Star2)
        (supports instrument2 thermograph1)
        (supports instrument2 infrared2)
        (supports instrument2 spectrograph0)
        (calibration_target instrument2 Star4)
        (on_board instrument2 satellite1)
        (power_avail satellite1)
        (pointing satellite1 Star13)
        (supports instrument3 thermograph1)
        (supports instrument3 infrared2)
        (supports instrument3 spectrograph0)
        (calibration_target instrument3 Star2)
        (calibration_target instrument3 GroundStation7)
        (supports instrument4 spectrograph0)
        (supports instrument4 thermograph1)
        (supports instrument4 infrared2)
        (calibration_target instrument4 GroundStation3)
        (calibration_target instrument4 Star4)
        (supports instrument5 spectrograph0)
        (calibration_target instrument5 GroundStation6)
        (calibration_target instrument5 GroundStation1)
        (calibration_target instrument5 Star4)
        (on_board instrument3 satellite2)
        (on_board instrument4 satellite2)
        (on_board instrument5 satellite2)
        (power_avail satellite2)
        (pointing satellite2 GroundStation7)
)
(:goal (and
        (pointing satellite0 GroundStation8)
        (have_image Planet10 infrared2)
        (have_image Planet11 thermograph1)
        (have_image Planet12 spectrograph0)
        (have_image Star13 spectrograph0)
        (have_image Star14 infrared2)
        (have_image Star15 infrared2)
))

)
