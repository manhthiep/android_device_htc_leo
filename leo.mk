#
# Copyright (C) 2009 The Android Open Source Project
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
#

#
# This is the product configuration for a generic GSM leo,
# not specialized for any geography.
#


## (1) First, the most specific values, i.e. the aspects that are specific to GSM

PRODUCT_COPY_FILES += \
    device/htc/leo/prebuilt/init.htcleo.rc:root/init.htcleo.rc \
    device/htc/leo/prebuilt/ueventd.htcleo.rc:root/ueventd.htcleo.rc \
    device/htc/leo/prebuilt/logo.rle:root/logo.rle \


# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

## (2) Also get non-open-source GSM-specific aspects if available
$(call inherit-product-if-exists, vendor/htc/leo/leo-vendor.mk)


DEVICE_PACKAGE_OVERLAYS += device/htc/leo/overlay

PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml

# media config xml file
PRODUCT_COPY_FILES += \
    device/htc/leo/prebuilt/media_profiles.xml:system/etc/media_profiles.xml

# This file is used to install the enable RMNET and corresponding modules which dont get activated by normal module script
PRODUCT_COPY_FILES += \
    device/htc/leo/prebuilt/01modules:system/etc/init.d/01modules

PRODUCT_PACKAGES += \
    sensors.htcleo \
    lights.htcleo \
    librs_jni \
    leo-reference-ril \
    gps.htcleo \
    libgps \
    com.android.future.usb.accessory \
    libhtc_ril_wrapper \
    audio.a2dp.default \
    audio.primary.htcleo \
    audio_policy.htcleo \
    copybit.htcleo \
    gralloc.htcleo

# leo uses high-density artwork where available 
PRODUCT_LOCALES := hdpi

PRODUCT_COPY_FILES += \
    device/htc/leo/prebuilt/vold.fstab:system/etc/vold.fstab

# Keylayouts
PRODUCT_COPY_FILES += \
    device/htc/leo/prebuilt/keylayout/htcleo-keypad.kl:system/usr/keylayout/htcleo-keypad.kl \
    device/htc/leo/prebuilt/keylayout/htcleo-keypad.kcm.bin:system/usr/keychars/htcleo-keypad.kcm.bin \
    device/htc/leo/prebuilt/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl

# Firmware
PRODUCT_COPY_FILES += \
    device/htc/leo/prebuilt/firmware/fw_bcm4329.bin:system/etc/firmware/fw_bcm4329.bin \
    device/htc/leo/prebuilt/firmware/fw_bcm4329_apsta.bin:system/etc/firmware/fw_bcm4329_apsta.bin

# Touchscreen
PRODUCT_COPY_FILES += \
    device/htc/leo/prebuilt/htcleo-touchscreen.idc:system/usr/idc/htcleo-touchscreen.idc

# PPP files
PRODUCT_COPY_FILES += \
    device/htc/leo/prebuilt/ppp/97ppp:system/etc/init.d/97ppp \
    device/htc/leo/prebuilt/ppp/ip-up:system/etc/ppp/ip-up \
    device/htc/leo/prebuilt/ppp/ip-down:system/etc/ppp/ip-down \
    device/htc/leo/prebuilt/ppp/options:system/etc/ppp/options

# Kernel Modules
PRODUCT_COPY_FILES += $(shell \
    find device/htc/leo/prebuilt/modules -name '*.ko' \
    | sed -r 's/^\/?(.*\/)([^/ ]+)$$/\1\2:system\/lib\/modules\/\2/' \
    | tr '\n' ' ')

# kernel
PRODUCT_COPY_FILES += \
    device/htc/leo/prebuilt/kernel:boot/zImage \

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/htc/leo/prebuilt/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

# The gps config appropriate for this device
PRODUCT_COPY_FILES += \
     device/htc/leo/prebuilt/gps.conf:system/etc/gps.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# media profiles and capabilities spec
$(call inherit-product, device/htc/leo/prebuilt/media_a1026.mk)

# stuff common to all HTC phones
$(call inherit-product, device/htc/common/common.mk)

PRODUCT_NAME := htc_leo
PRODUCT_DEVICE := leo
