$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# proprietary side of the device
$(call inherit-product-if-exists, vendor/semc/coconut/coconut-vendor.mk)


# Discard inherited values and use our own instead.
PRODUCT_NAME := coconut
PRODUCT_DEVICE := coconut
PRODUCT_MODEL := coconut

-include device/semc/mogami-common/mogami.mk

# These is the hardware-specific overlay, which points to the location
# of hardware-specific resource overrides, typically the frameworks and
# application settings that are stored in resourced.
DEVICE_PACKAGE_OVERLAYS += device/semc/coconut/overlay

# These are the hardware-specific configuration files
PRODUCT_COPY_FILES += \
	device/semc/coconut/prebuilt/media_profiles.xml:system/etc/media_profiles.xml

# Init files
PRODUCT_COPY_FILES += \
    device/semc/coconut/prebuilt/init.semc.usb.rc:root/init.semc.usb.rc \
    device/semc/coconut/prebuilt/bootrec-device:root/sbin/bootrec-device \
    device/semc/coconut/prebuilt/hw_config.sh:system/etc/hw_config.sh \
    device/semc/coconut/prebuilt/pre_hw_config.sh:root/pre_hw_config.sh \
    device/semc/msm7x30-common/prebuilt/logo_M.rle:root/logo.rle \
    device/semc/coconut/recovery.fstab:root/recovery.fstab

#device specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/android.hardware.camera.front.xml

# semc msm7x30 uses high-density artwork where available
PRODUCT_LOCALES += mdpi

-include device/semc/msm7x30-common/prebuilt/resources-mdpi.mk

#LCD DENSITY
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=160 \
    com.qc.hdmi_out=false
