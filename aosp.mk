ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/htc/leo/prebuilt/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):boot/zImage \
    device/htc/leo/prebuilt/initrd.gz:boot/initrd.gz

# Inherit AOSP device configuration for leo.
$(call inherit-product, device/htc/leo/full_leo.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

# Utilities
PRODUCT_COPY_FILES +=  \
    device/htc/leo/prebuilt/FileManager.apk:system/app/FileManager.apk

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# GSM APN list
PRODUCT_COPY_FILES += \
    device/htc/leo/prebuilt/apns-conf.xml:system/etc/apns-conf.xml

# GSM SPN overrides list
PRODUCT_COPY_FILES += \
    device/htc/leo/prebuilt/spn-conf.xml:system/etc/spn-conf.xml

# Required packages
PRODUCT_PACKAGES += \
    Camera \
    LatinIME \
    Superuser \
    Superuser.apk \
    su

# Optional packages
PRODUCT_PACKAGES += \
    VideoEditor \
    VoiceDialer \
    SoundRecorder \
    Basic \
    HoloSpiralWallpaper \
    MagicSmokeWallpapers \
    NoiseField \
    Galaxy4 \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    PhaseBeam

# Stuffs from CM
PRODUCT_PACKAGES += \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs

# Don't export PS1 in /system/etc/mkshrc.
PRODUCT_COPY_FILES += \
    device/htc/leo/prebuilt/mkshrc:system/etc/mkshrc

# init.d support
PRODUCT_COPY_FILES += \
    device/htc/leo/prebuilt/sysinit:system/bin/sysinit

PRODUCT_PACKAGE_OVERLAYS += device/htc/leo/prebuilt/dictionaries

## Device identifier. This must come after all inclusions
PRODUCT_MODEL := HTC HD2 (Leo)
PRODUCT_MANUFACTURER := HTC
PRODUCT_BRAND := htc
PRODUCT_DEVICE := leo
PRODUCT_NAME := htc_leo
PRODUCT_CODENAME := leo
BUILD_VERSION_TAGS := user

