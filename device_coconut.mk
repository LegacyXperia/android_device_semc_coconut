$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# proprietary side of the device
$(call inherit-product-if-exists, vendor/semc/coconut/coconut-vendor.mk)


# Discard inherited values and use our own instead.
PRODUCT_NAME := coconut
PRODUCT_DEVICE := coconut
PRODUCT_MODEL := coconut

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/semc/coconut/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

-include device/semc/mogami-common/mogami.mk

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

DISABLE_DEXPREOPT := false

# These is the hardware-specific overlay, which points to the location
# of hardware-specific resource overrides, typically the frameworks and
# application settings that are stored in resourced.
DEVICE_PACKAGE_OVERLAYS += device/semc/coconut/overlay

# These are the hardware-specific configuration files
#PRODUCT_COPY_FILES += \
#	device/semc/coconut/prebuilt/media_profiles.xml:system/etc/media_profiles.xml

# Init files
PRODUCT_COPY_FILES += \
    device/semc/coconut/prebuilt/bootrec:root/sbin/bootrec \
    device/semc/coconut/prebuilt/hw_config.sh:system/etc/hw_config.sh \
    device/semc/coconut/prebuilt/pre_hw_config.sh:root/pre_hw_config.sh \
    device/semc/msm7x30-common/prebuilt/logo_M.rle:root/logo.rle \
    device/semc/coconut/recovery.fstab:root/recovery.fstab


# semc msm7x30 uses high-density artwork where available
PRODUCT_LOCALES += mdpi

#Offline charging animation
PRODUCT_COPY_FILES += \
    device/semc/msm7x30-common/prebuilt/animations/charging_animation_01_M.png:system/semc/chargemon/data/charging_animation_01.png \
    device/semc/msm7x30-common/prebuilt/animations/charging_animation_02_M.png:system/semc/chargemon/data/charging_animation_02.png \
    device/semc/msm7x30-common/prebuilt/animations/charging_animation_03_M.png:system/semc/chargemon/data/charging_animation_03.png \
    device/semc/msm7x30-common/prebuilt/animations/charging_animation_04_M.png:system/semc/chargemon/data/charging_animation_04.png \
    device/semc/msm7x30-common/prebuilt/animations/charging_animation_05_M.png:system/semc/chargemon/data/charging_animation_05.png \
    device/semc/msm7x30-common/prebuilt/animations/charging_animation_06_M.png:system/semc/chargemon/data/charging_animation_06.png \
    device/semc/msm7x30-common/prebuilt/animations/charging_animation_07_M.png:system/semc/chargemon/data/charging_animation_07.png

#LCD DENSITY
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=160
