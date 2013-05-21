-include device/semc/mogami-common/BoardConfigCommon.mk
-include vendor/semc/coconut/BoardConfigVendor.mk

# Kernel
TARGET_KERNEL_CONFIG := nAa_coconut_defconfig

# Sensors
SOMC_CFG_SENSORS_ACCEL_BMA250_INPUT := yes
SOMC_CFG_SENSORS_PROXIMITY_APDS9700 := yes

BOARD_USES_STEREO_HW_SPEAKER := true

TARGET_OTA_ASSERT_DEVICE := WT19a,WT19i,coconut

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/semc/coconut/bluedroid
