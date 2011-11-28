## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/leo/leo.mk)

PRODUCT_NAME := cm_leo

# Release name and versioning
PRODUCT_RELEASE_NAME := GN
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cm/config/common_versions.mk

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := leo

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=leo BUILD_ID=ITL41D BUILD_DISPLAY_ID=ITL41D BUILD_FINGERPRINT="google/full_leo/leo:4.0.1/ITL41D/223971:user/release-keys" PRVIATE_BUILD_DESC="full_leo-user 4.0.1 ITL41D 223971 release-keys"
