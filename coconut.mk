# Copyright (C) 2011-2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# proprietary side of the device
$(call inherit-product, vendor/semc/coconut/coconut-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/semc/coconut/overlay

$(call inherit-product, device/semc/mogami-common/mogami.mk)

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml

# This device is mdpi.  However the platform doesn't
# currently contain all of the bitmaps at mdpi density so
# we do this little trick to fall back to the hdpi version
# if the mdpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal mdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

# Init files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/init.device.rc:root/init.device.rc \
    $(LOCAL_PATH)/rootdir/init.semc.usb.rc:root/init.semc.usb.rc \
    $(LOCAL_PATH)/rootdir/system/etc/hw_config.sh:system/etc/hw_config.sh

# Device specific configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/system/usr/idc/cyttsp-spi.idc:system/usr/idc/cyttsp-spi.idc \
    $(LOCAL_PATH)/rootdir/system/usr/keylayout/cyttsp_key.kl:system/usr/keylayout/cyttsp_key.kl \
    $(LOCAL_PATH)/rootdir/system/usr/keylayout/pm8xxx-keypad.kl:system/usr/keylayout/pm8xxx-keypad.kl \
    $(LOCAL_PATH)/rootdir/system/etc/sensors.conf:system/etc/sensors.conf \
    $(LOCAL_PATH)/rootdir/system/etc/wifi/TQS_S_2.6.ini:system/etc/wifi/TQS_S_2.6.ini

# Device properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=160
