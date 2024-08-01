(define (problem strips-sat-x-1-12)
(:domain satellite)
(:objects
        satellite0 - satellite
        instrument0 - instrument
        instrument1 - instrument
        satellite1 - satellite
        instrument2 - instrument
        instrument3 - instrument
        satellite2 - satellite
        instrument4 - instrument
        infrared2 - mode
        infrared3 - mode
        spectrograph0 - mode
        thermograph1 - mode
        Star0 - direction
        Star3 - direction
        Star6 - direction
        GroundStation7 - direction
        GroundStation8 - direction
        Star10 - direction
        GroundStation5 - direction
        Star1 - direction
        Star9 - direction
        Star4 - direction
        Star2 - direction
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
        (calibration_target instrument1 Star9)
        (on_board instrument0 satellite0)
        (on_board instrument1 satellite0)
        (power_avail satellite0)
        (pointing satellite0 Star10)
        (supports instrument2 spectrograph0)
        (supports instrument2 infrared3)
        (supports instrument2 thermograph1)
        (calibration_target instrument2 Star1)
        (supports instrument3 infrared2)
        (supports instrument3 infrared3)
        (supports instrument3 spectrograph0)
        (calibration_target instrument3 Star2)
        (calibration_target instrument3 Star4)
        (calibration_target instrument3 Star1)
        (on_board instrument2 satellite1)
        (on_board instrument3 satellite1)
        (power_avail satellite1)
        (pointing satellite1 Star17)
        (supports instrument4 thermograph1)
        (supports instrument4 spectrograph0)
        (calibration_target instrument4 Star2)
        (calibration_target instrument4 Star4)
        (calibration_target instrument4 Star9)
        (on_board instrument4 satellite2)
        (power_avail satellite2)
        (pointing satellite2 Star4)
)
(:goal (and
        (pointing satellite1 Star0)
        (have_image Planet11 infrared3)
        (have_image Phenomenon12 spectrograph0)
        (have_image Planet13 thermograph1)
        (have_image Planet14 thermograph1)
        (have_image Star15 spectrograph0)
        (have_image Phenomenon16 spectrograph0)
        (have_image Star17 infrared3)
))

)
