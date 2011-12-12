## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := GN

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/leo/full_leo.mk)

## Device identifier. This must come after all inclusions
PRODUCT_MODEL := HTC HD2
PRODUCT_MANUFACTURER := HTC
PRODUCT_BRAND := htc
PRODUCT_DEVICE := leo
PRODUCT_NAME := cm_leo

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=leo BUILD_ID=ITL41D BUILD_DISPLAY_ID=ITL41D BUILD_FINGERPRINT="google/htc_leo/leo:4.0.1/ITL41D/223971:user/release-keys" PRVIATE_BUILD_DESC="full_leo-user 4.0.1 ITL41D 223971 release-keys"


PRODUCT_PACKAGES += \
    Camera

# Release name and versioning
PRODUCT_RELEASE_NAME := Leo
PRODUCT_VERSION_DEVICE_SPECIFIC := -aali

-include vendor/cm/products/common_versions.mk

