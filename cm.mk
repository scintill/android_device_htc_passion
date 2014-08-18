TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Call this first so apn list is actually copied
$(call inherit-product, vendor/cm/config/gsm.mk)

$(call inherit-product, device/htc/passion/full_passion.mk)

# Inherit some common evervolv stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME    := cm_passion
PRODUCT_BRAND   := google
PRODUCT_DEVICE  := passion
PRODUCT_MODEL   := Nexus One
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=passion BUILD_FINGERPRINT=google/passion/passion:2.3.6/GRK39F/189904:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.6 GRK39F 189904 release-keys"

PRODUCT_PACKAGES += Torch

### scintill's customizations

PRODUCT_PACKAGES += ADWLauncher
PRODUCT_COPY_FILES += \
	vendor/scintill/prebuilts/cryptsetup:system/bin/cryptsetup

# KSM and zram
PRODUCT_PROPERTY_OVERRIDES += \
	ro.ksm.default=1
PRODUCT_COPY_FILES += \
    device/htc/passion/fstab.zram:root/fstab.zram

## Slimming
# I feel dirty putting especially the locale override here, but have poked around too long fruitlessly trying to find a better way

# save space by not including other locale stuff
PRODUCT_LOCALES := en_US

# we are hdpi, so we don't need higher
PRODUCT_AAPT_CONFIG := normal hdpi

# drop some locales' TTS stuff (~4MB)
PRODUCT_COPY_FILES_OVERRIDES += \
	system/tts/lang_pico/de-DE_gl0_sg.bin \
	system/tts/lang_pico/de-DE_ta.bin \
	system/tts/lang_pico/en-GB_kh0_sg.bin \
	system/tts/lang_pico/en-GB_ta.bin \
	system/tts/lang_pico/es-ES_ta.bin \
	system/tts/lang_pico/es-ES_zl0_sg.bin \
	system/tts/lang_pico/fr-FR_nk0_sg.bin \
	system/tts/lang_pico/fr-FR_ta.bin \
	system/tts/lang_pico/it-IT_cm0_sg.bin \
	system/tts/lang_pico/it-IT_ta.bin

# disable CMS
WITH_GMS := true

SMALLER_FONT_FOOTPRINT := true

# omit these prebuilts to save space
PRODUCT_COPY_FILES_OVERRIDES += \
	system/app/Term.apk \
	system/lib/libjackpal-androidterm4.so \
	system/media/bootanimation.zip
