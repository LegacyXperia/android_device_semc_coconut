## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := WT19i

TARGET_BOOTANIMATION_NAME := vertical-320x480

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/semc/coconut/device_coconut.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := coconut
PRODUCT_NAME := cm_coconut
PRODUCT_BRAND := SEMC
PRODUCT_MODEL := Xperia Live

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=WT19i BUILD_FINGERPRINT="SEMC/WT19i_1254-7338/WT19i:4.0.4/4.1.B.0.431/UL5_3w:user/release-keys" PRIVATE_BUILD_DESC="WT19i-user 4.0.4 4.1.B.0.431 UL5_3w test-keys"
