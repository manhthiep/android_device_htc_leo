# GSM APN list
PRODUCT_COPY_FILES += \
    vendor/ev/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# GSM SPN overrides list
PRODUCT_COPY_FILES += \
    vendor/ev/prebuilt/common/etc/spn-conf.xml:system/etc/spn-conf.xml

# SIM Toolkit
PRODUCT_PACKAGES += \
    Stk

$(call inherit-product, device/htc/leo/full_leo.mk)

NIGHTLY_BUILD := true

PRODUCT_BRAND ?= evervolv

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

PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Pyxis.ogg \
    ro.config.notification_sound=Merope.ogg \
    ro.config.alarm_alert=Scandium.ogg

# Enable SIP+VoIP on all targets
#PRODUCT_COPY_FILES += \
#    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Required packages
PRODUCT_PACKAGES += \
    LatinIME \
    Superuser \
    su

# Optional packages
PRODUCT_PACKAGES += \
    AndroidTerm \
    EVToolbox \
    EVTips \
    EVWidgets

PRODUCT_PACKAGES += \
    Mms

# Utilize init.d scripts
PRODUCT_COPY_FILES += \
    vendor/ev/prebuilt/common/bin/sysinit:system/bin/sysinit \
    vendor/ev/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/ev/prebuilt/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/ev/prebuilt/common/etc/init.d/05mountext:system/etc/init.d/05mountext \
    vendor/ev/prebuilt/common/etc/init.d/06handleswap:system/etc/init.d/06handleswap

# Configs
PRODUCT_COPY_FILES += \
    device/htc/leo/prebuilt/media_codecs.xml:system/etc/media_codecs.xml \
    device/htc/leo/prebuilt/audio_policy.conf:system/etc/audio_policy.conf

# Init post-boot script
PRODUCT_COPY_FILES += \
    device/htc/leo/prebuilt/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh

# Apps2sd files
PRODUCT_COPY_FILES += \
    vendor/ev/prebuilt/common/bin/a2sd:system/bin/a2sd \
    vendor/ev/prebuilt/common/bin/fix_permissions:system/bin/fix_permissions \
    vendor/ev/prebuilt/common/xbin/zipalign:system/xbin/zipalign \
    vendor/ev/prebuilt/common/etc/init.d/10apps2sd-redux:system/etc/init.d/10apps2sd

# Prebuilt commandline tools
PRODUCT_COPY_FILES += \
    vendor/ev/prebuilt/common/xbin/dropbear-keygen:system/xbin/dropbear-keygen \
    vendor/ev/prebuilt/common/xbin/powertop:system/xbin/powertop \
    vendor/ev/prebuilt/common/etc/profile:system/etc/profile

PRODUCT_PACKAGE_OVERLAYS += vendor/ev/overlay/wallpapers
PRODUCT_PACKAGE_OVERLAYS += vendor/ev/overlay/common

# Disable strict mode
ADDITIONAL_DEFAULT_PROPERTIES += \
    persist.sys.strictmode.disable=true

# Bring in all audio files
include frameworks/base/data/sounds/AllAudio.mk

PRODUCT_PACKAGE_OVERLAYS += vendor/ev/overlay/full

PRODUCT_PACKAGES += \
    VideoEditor \
    VoiceDialer \
    Basic \
    HoloSpiralWallpaper \
    MagicSmokeWallpapers \
    NoiseField \
    Galaxy4 \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    PhaseBeam

# T-Mobile theme engine
PRODUCT_PACKAGES += \
    ThemeManager \
    ThemeChooser \
    com.tmobile.themes

PRODUCT_COPY_FILES += \
    vendor/ev/prebuilt/common/etc/permissions/com.tmobile.software.themes.xml:system/etc/permissions/com.tmobile.software.themes.xml

# Theme packages to include
PRODUCT_PACKAGES += \
    Androidian-6-100

# Version Info
PRODUCT_VERSION_MAJOR = 2
PRODUCT_VERSION_MINOR = 2
PRODUCT_VERSION_MAINTENANCE = 0

ifeq ($(NIGHTLY_BUILD),true)
    ROM_VERSION := Evervolv-$(PRODUCT_CODENAME)-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)$(PRODUCT_VERSION_DEVICE_SPECIFIC)-$(shell date +%Y%m%d)
else
    ROM_VERSION := Evervolv-$(PRODUCT_CODENAME)-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)$(PRODUCT_VERSION_DEVICE_SPECIFIC)
endif

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.romversion=$(ROM_VERSION)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := ev_leo
PRODUCT_BRAND := google
PRODUCT_DEVICE := leo
PRODUCT_MODEL := HD2
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=passion BUILD_FINGERPRINT=google/passion/passion:2.3.6/GRK39F/189904:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.6 GRK39F 189904 release-keys"

