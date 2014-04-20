TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Call this first so apn list is actually copied
$(call inherit-product, vendor/slim/config/gsm.mk)

$(call inherit-product, device/htc/passion/full_passion.mk)

# Inherit some common evervolv stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME    := slim_passion
PRODUCT_BRAND   := google
PRODUCT_DEVICE  := passion
PRODUCT_MODEL   := Nexus One
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=passion BUILD_FINGERPRINT=google/passion/passion:2.3.6/GRK39F/189904:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.6 GRK39F 189904 release-keys"

PRODUCT_PACKAGES += Torch


