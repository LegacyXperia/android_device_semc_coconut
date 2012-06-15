-include device/semc/mogami-common/BoardConfigCommon.mk
-include vendor/semc/coconut/BoardConfigVendor.mk

TARGET_KERNEL_SOURCE := kernel/semc/msm7x30
TARGET_KERNEL_CONFIG := cyanogen_coconut_defconfig
TARGET_PREBUILT_KERNEL := device/semc/coconut/prebuilt/kernel

SENSORS_COMPASS_AK897X := true
SENSORS_ACCEL_BMA150_INPUT := false
SENSORS_ACCEL_BMA250_INPUT := true
SENSORS_PROXIMITY_APDS970X := true
SENSORS_PRESSURE_BMP180 := false

BOARD_USES_STEREO_HW_SPEAKER := true

TARGET_OTA_ASSERT_DEVICE := WT19a,WT19i,coconut
