# proprietary side of the device
$(call inherit-product-if-exists, vendor/semc/coconut/coconut-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/semc/coconut/overlay

$(call inherit-product, device/semc/mogami-common/mogami.mk)

$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml

PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

# These are the hardware-specific configuration files
PRODUCT_COPY_FILES += \
    device/semc/coconut/prebuilt/media_profiles.xml:system/etc/media_profiles.xml

# Init files
PRODUCT_COPY_FILES += \
    device/semc/coconut/prebuilt/init.semc.usb.rc:root/init.semc.usb.rc \
    device/semc/coconut/prebuilt/pre_hw_config.sh:root/pre_hw_config.sh \
    device/semc/coconut/prebuilt/hw_config.sh:system/etc/hw_config.sh \
    device/semc/msm7x30-common/prebuilt/logo_M.rle:root/logo.rle \
    device/semc/coconut/prebuilt/bootrec-device:root/sbin/bootrec-device \
    device/semc/coconut/recovery.fstab:root/recovery.fstab

$(call inherit-product, device/semc/msm7x30-common/prebuilt/resources-mdpi.mk)

#LCD DENSITY
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=160 \
    com.qc.hdmi_out=false
