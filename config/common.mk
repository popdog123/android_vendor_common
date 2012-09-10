PRODUCT_BRAND ?= aosp

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=dd-MM-yyyy \
    ro.com.android.dataroaming=false

PRODUCT_COPY_FILES += \
    vendor/common/prebuilt/common/bin/sysinit:system/bin/sysinit \
    vendor/common/prebuilt/common/etc/mkshrc:system/etc/mkshrc \
    vendor/common/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/common/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml
    
PRODUCT_COPY_FILES += vendor/common/prebuilt/common/etc/init.d/10apps2sd:system/etc/init.d/10apps2sd

PRODUCT_PACKAGES += \
    Camera \
    LatinIME \
    Superuser \
    Superuser.apk \
    su

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

include vendor/google/gapps.mk

PRODUCT_PACKAGE_OVERLAYS += vendor/common/overlay/dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/common/overlay/common

PRODUCT_VERSION_MAJOR = 4
PRODUCT_VERSION_MINOR = 1
PRODUCT_VERSION_MAINTENANCE = 0

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=IMM76D
