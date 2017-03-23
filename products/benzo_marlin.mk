# Release name
PRODUCT_RELEASE_NAME := Marlin

# Inherit aosp_marlin
$(call inherit-product, device/google/marlin/aosp_marlin.mk)
PRODUCT_DEVICE := marlin
PRODUCT_NAME := benzo_marlin
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel XL
PRODUCT_MANUFACTURER := Google
TARGET_VENDOR := google

# Device Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=marlin \
 BUILD_FINGERPRINT=google/marlin/marlin:7.1.1/NOF27C/3687810:user/release-keys \
 PRIVATE_BUILD_DESC="marlin-user 7.1.1 NOF27C 3687810 release-keys"

# Target device
export TARGET_DEVICE := marlin

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/benzo/prebuilt/common/bootanimations/bootanimation.zip:system/media/bootanimation.zip
