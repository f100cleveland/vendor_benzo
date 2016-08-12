# Inherit common stuff
$(call inherit-product, vendor/benzo/config/common_full.mk)

$(call inherit-product, vendor/benzo/config/telephony.mk)

$(call inherit-product, vendor/addons/config.mk)
