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

## Slimming
# I feel dirty putting especially the locale override here, but have poked around too long fruitlessly trying to find a better way

# save space by not including other locale stuff
PRODUCT_LOCALES := en_US

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
MINIMAL_FONT_FOOTPRINT := true

# omit these media files to save space
PRODUCT_COPY_FILES_OVERRIDES += \
	system/media/audio/alarms/Alarm_Beep_01.ogg \
	system/media/audio/alarms/Alarm_Beep_02.ogg \
	system/media/audio/alarms/Alarm_Beep_03.ogg \
	system/media/audio/alarms/Alarm_Buzzer.ogg \
	system/media/audio/alarms/Alarm_Rooster_02.ogg \
	system/media/audio/alarms/Argon.ogg \
	system/media/audio/alarms/Barium.ogg \
	system/media/audio/alarms/Cesium.ogg \
	system/media/audio/alarms/CyanAlarm.ogg \
	system/media/audio/alarms/Neptunium.ogg \
	system/media/audio/alarms/Nobelium.ogg \
	system/media/audio/alarms/NuclearLaunch.ogg \
	system/media/audio/alarms/Osmium.ogg \
	system/media/audio/alarms/Platinum.ogg \
	system/media/audio/alarms/Plutonium.ogg \
	system/media/audio/alarms/Scandium.ogg \
	system/media/audio/notifications/Adara.ogg \
	system/media/audio/notifications/Aldebaran.ogg \
	system/media/audio/notifications/Altair.ogg \
	system/media/audio/notifications/Alya.ogg \
	system/media/audio/notifications/Antares.ogg \
	system/media/audio/notifications/Antimony.ogg \
	system/media/audio/notifications/Arcturus.ogg \
	system/media/audio/notifications/Beat_Box_Android.ogg \
	system/media/audio/notifications/Beryllium.ogg \
	system/media/audio/notifications/Betelgeuse.ogg \
	system/media/audio/notifications/CaffeineSnake.ogg \
	system/media/audio/notifications/Canopus.ogg \
	system/media/audio/notifications/Capella.ogg \
	system/media/audio/notifications/Castor.ogg \
	system/media/audio/notifications/CetiAlpha.ogg \
	system/media/audio/notifications/Cobalt.ogg \
	system/media/audio/notifications/Cricket.ogg \
	system/media/audio/notifications/CyanDoink.ogg \
	system/media/audio/notifications/CyanMail.ogg \
	system/media/audio/notifications/CyanMessage.ogg \
	system/media/audio/notifications/DearDeer.ogg \
	system/media/audio/notifications/Deneb.ogg \
	system/media/audio/notifications/Doink.ogg \
	system/media/audio/notifications/DontPanic.ogg \
	system/media/audio/notifications/Drip.ogg \
	system/media/audio/notifications/Electra.ogg \
	system/media/audio/notifications/F1_MissedCall.ogg \
	system/media/audio/notifications/F1_New_MMS.ogg \
	system/media/audio/notifications/F1_New_SMS.ogg \
	system/media/audio/notifications/Fluorine.ogg \
	system/media/audio/notifications/Fomalhaut.ogg \
	system/media/audio/notifications/Gallium.ogg \
	system/media/audio/notifications/Heaven.ogg \
	system/media/audio/notifications/Helium.ogg \
	system/media/audio/notifications/Highwire.ogg \
	system/media/audio/notifications/Hojus.ogg \
	system/media/audio/notifications/Iridium.ogg \
	system/media/audio/notifications/Krypton.ogg \
	system/media/audio/notifications/KzurbSonar.ogg \
	system/media/audio/notifications/Lalande.ogg \
	system/media/audio/notifications/Laser.ogg \
	system/media/audio/notifications/Merope.ogg \
	system/media/audio/notifications/Mira.ogg \
	system/media/audio/notifications/moonbeam.ogg \
	system/media/audio/notifications/Naughty.ogg \
	system/media/audio/notifications/OnTheHunt.ogg \
	system/media/audio/notifications/Palladium.ogg \
	system/media/audio/notifications/pixiedust.ogg \
	system/media/audio/notifications/pizzicato.ogg \
	system/media/audio/notifications/Plastic_Pipe.ogg \
	system/media/audio/notifications/Polaris.ogg \
	system/media/audio/notifications/Pollux.ogg \
	system/media/audio/notifications/Pong.ogg \
	system/media/audio/notifications/Procyon.ogg \
	system/media/audio/notifications/Proxima.ogg \
	system/media/audio/notifications/Radon.ogg \
	system/media/audio/notifications/Rang.ogg \
	system/media/audio/notifications/regulus.ogg \
	system/media/audio/notifications/Rubidium.ogg \
	system/media/audio/notifications/Selenium.ogg \
	system/media/audio/notifications/Shaula.ogg \
	system/media/audio/notifications/sirius.ogg \
	system/media/audio/notifications/SpaceSeed.ogg \
	system/media/audio/notifications/Spica.ogg \
	system/media/audio/notifications/Stone.ogg \
	system/media/audio/notifications/Strontium.ogg \
	system/media/audio/notifications/Syrma.ogg \
	system/media/audio/notifications/TaDa.ogg \
	system/media/audio/notifications/Talitha.ogg \
	system/media/audio/notifications/Tejat.ogg \
	system/media/audio/notifications/Thallium.ogg \
	system/media/audio/notifications/Tinkerbell.ogg \
	system/media/audio/notifications/tweeters.ogg \
	system/media/audio/notifications/Upsilon.ogg \
	system/media/audio/notifications/Vega.ogg \
	system/media/audio/notifications/Voila.ogg \
	system/media/audio/notifications/Xenon.ogg \
	system/media/audio/notifications/Zirconium.ogg \
	system/media/audio/ringtones/Andromeda.ogg \
	system/media/audio/ringtones/Aquila.ogg \
	system/media/audio/ringtones/ArgoNavis.ogg \
	system/media/audio/ringtones/Atria.ogg \
	system/media/audio/ringtones/Backroad.ogg \
	system/media/audio/ringtones/BeatPlucker.ogg \
	system/media/audio/ringtones/BentleyDubs.ogg \
	system/media/audio/ringtones/Big_Easy.ogg \
	system/media/audio/ringtones/BirdLoop.ogg \
	system/media/audio/ringtones/Bollywood.ogg \
	system/media/audio/ringtones/BOOTES.ogg \
	system/media/audio/ringtones/Boxbeat.ogg \
	system/media/audio/ringtones/BussaMove.ogg \
	system/media/audio/ringtones/Cairo.ogg \
	system/media/audio/ringtones/Calypso_Steel.ogg \
	system/media/audio/ringtones/CanisMajor.ogg \
	system/media/audio/ringtones/CaribbeanIce.ogg \
	system/media/audio/ringtones/Carina.ogg \
	system/media/audio/ringtones/CASSIOPEIA.ogg \
	system/media/audio/ringtones/Centaurus.ogg \
	system/media/audio/ringtones/Champagne_Edition.ogg \
	system/media/audio/ringtones/Club_Cubano.ogg \
	system/media/audio/ringtones/CrayonRock.ogg \
	system/media/audio/ringtones/CrazyDream.ogg \
	system/media/audio/ringtones/CurveBall.ogg \
	system/media/audio/ringtones/CyanTone.ogg \
	system/media/audio/ringtones/Cygnus.ogg \
	system/media/audio/ringtones/DancinFool.ogg \
	system/media/audio/ringtones/Ding.ogg \
	system/media/audio/ringtones/DonMessWivIt.ogg \
	system/media/audio/ringtones/Draco.ogg \
	system/media/audio/ringtones/DreamTheme.ogg \
	system/media/audio/ringtones/Eastern_Sky.ogg \
	system/media/audio/ringtones/Enter_the_Nexus.ogg \
	system/media/audio/ringtones/Eridani.ogg \
	system/media/audio/ringtones/EtherShake.ogg \
	system/media/audio/ringtones/FreeFlight.ogg \
	system/media/audio/ringtones/FriendlyGhost.ogg \
	system/media/audio/ringtones/Funk_Yall.ogg \
	system/media/audio/ringtones/GameOverGuitar.ogg \
	system/media/audio/ringtones/Gimme_Mo_Town.ogg \
	system/media/audio/ringtones/Girtab.ogg \
	system/media/audio/ringtones/Glacial_Groove.ogg \
	system/media/audio/ringtones/Growl.ogg \
	system/media/audio/ringtones/HalfwayHome.ogg \
	system/media/audio/ringtones/Highscore.ogg \
	system/media/audio/ringtones/Hydra.ogg \
	system/media/audio/ringtones/InsertCoin.ogg \
	system/media/audio/ringtones/Kuma.ogg \
	system/media/audio/ringtones/LoopyLounge.ogg \
	system/media/audio/ringtones/LoveFlute.ogg \
	system/media/audio/ringtones/Lyon.ogg \
	system/media/audio/ringtones/Lyra.ogg \
	system/media/audio/ringtones/Machina.ogg \
	system/media/audio/ringtones/MidEvilJaunt.ogg \
	system/media/audio/ringtones/MildlyAlarming.ogg \
	system/media/audio/ringtones/Nairobi.ogg \
	system/media/audio/ringtones/Nassau.ogg \
	system/media/audio/ringtones/NewPlayer.ogg \
	system/media/audio/ringtones/Noises1.ogg \
	system/media/audio/ringtones/Noises2.ogg \
	system/media/audio/ringtones/Noises3.ogg \
	system/media/audio/ringtones/No_Limits.ogg \
	system/media/audio/ringtones/OrganDub.ogg \
	system/media/audio/ringtones/Paradise_Island.ogg \
	system/media/audio/ringtones/Pegasus.ogg \
	system/media/audio/ringtones/Perseus.ogg \
	system/media/audio/ringtones/Playa.ogg \
	system/media/audio/ringtones/Pyxis.ogg \
	system/media/audio/ringtones/Rasalas.ogg \
	system/media/audio/ringtones/Revelation.ogg \
	system/media/audio/ringtones/Rigel.ogg \
	system/media/audio/ringtones/Ring_Classic_02.ogg \
	system/media/audio/ringtones/Ring_Digital_02.ogg \
	system/media/audio/ringtones/Ring_Synth_02.ogg \
	system/media/audio/ringtones/Ring_Synth_04.ogg \
	system/media/audio/ringtones/Road_Trip.ogg \
	system/media/audio/ringtones/Rockin.ogg \
	system/media/audio/ringtones/RomancingTheTone.ogg \
	system/media/audio/ringtones/Safari.ogg \
	system/media/audio/ringtones/Savannah.ogg \
	system/media/audio/ringtones/Scarabaeus.ogg \
	system/media/audio/ringtones/Sceptrum.ogg \
	system/media/audio/ringtones/Seville.ogg \
	system/media/audio/ringtones/Sheep.mp3 \
	system/media/audio/ringtones/Shes_All_That.ogg \
	system/media/audio/ringtones/SilkyWay.ogg \
	system/media/audio/ringtones/SitarVsSitar.ogg \
	system/media/audio/ringtones/Solarium.ogg \
	system/media/audio/ringtones/SpringyJalopy.ogg \
	system/media/audio/ringtones/Steppin_Out.ogg \
	system/media/audio/ringtones/Terminated.ogg \
	system/media/audio/ringtones/Testudo.ogg \
	system/media/audio/ringtones/Themos.ogg \
	system/media/audio/ringtones/Third_Eye.ogg \
	system/media/audio/ringtones/Thunderfoot.ogg \
	system/media/audio/ringtones/TwirlAway.ogg \
	system/media/audio/ringtones/UrsaMinor.ogg \
	system/media/audio/ringtones/VeryAlarmed.ogg \
	system/media/audio/ringtones/Vespa.ogg \
	system/media/audio/ringtones/World.ogg \
	system/media/audio/ringtones/Zeta.ogg \
	system/media/bootanimation.zip
