# Inherit additional stuff
$(call inherit-product, vendor/benzo/config/common.mk)

# Wallpaper packages
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    PhaseBeam

# Add bash shell
PRODUCT_COPY_FILES += \
    vendor/benzo/prebuilt/common/bin/b:system/bin/b \
    vendor/benzo/prebuilt/common/bin/bash:system/bin/bash \
    vendor/benzo/prebuilt/common/etc/bash/bashrc:system/etc/bash/bashrc
