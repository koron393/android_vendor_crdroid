# Additional props
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    dalvik.vm.debug.alloc=0 \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dataroaming=false \
    ro.atrace.core.services=com.google.android.gms,com.google.android.gms.ui,com.google.android.gms.persistent \
    ro.setupwizard.rotation_locked=true \
    ro.com.google.ime.theme_id=5 \
    ro.opa.eligible_device=true \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.network_required=false \
    ro.setupwizard.gservices_delay=-1 \
    ro.setupwizard.mode=OPTIONAL \
    setupwizard.feature.predeferred_enabled=false \
    drm.service.enabled=true \
    net.tethering.noprovisioning=true \
    persist.sys.dun.override=0 \
    keyguard.no_require_sim=true \
    persist.sys.disable_rescue=true

# Enable IORap I/O Prefetching
PRODUCT_SYSTEM_PROPERTIES += \
    persist.device_config.runtime_native_boot.iorap_perfetto_enable=true

# Enable one-handed mode
PRODUCT_PRODUCT_PROPERTIES += \
    ro.support_one_handed_mode=true

# Blurs
ifeq ($(TARGET_ENABLE_BLUR), true)
PRODUCT_SYSTEM_EXT_PROPERTIES += \
    ro.sf.blurs_are_expensive=1 \
    ro.surface_flinger.supports_background_blur=1 \
    ro.launcher.blur.appLaunch=0
endif

# Disable async MTE on system_server
PRODUCT_SYSTEM_EXT_PROPERTIES += \
    arm64.memtag.process.system_server=off

# Enable dex2oat64 to do dexopt
PRODUCT_SYSTEM_EXT_PROPERTIES += \
    dalvik.vm.dex2oat64.enabled=true

# Extra packages
PRODUCT_PACKAGES += \
    MatLog

# Fonts
PRODUCT_PACKAGES += \
    fonts_customization.xml \
    AccuratistFont \
    AclonicaFont \
    Amarante \
    BariolFont \
    CagliostroFont \
    CoconFont \
    ComfortaaFont \
    ComicSansFont \
    CoolstoryFont \
    ExotwoFont \
    Fifa2018Font \
    GoogleSansFont \
    GrandHotelFont \
    LatoFont \
    LGSmartGothicFont \
    LinotteFont \
    NokiaPureFont \
    NunitoFont \
    OneplusSansFont \
    OneplusSlateFont \
    OswaldFont \
    QuandoFont \
    RedressedFont \
    ReemKufiFont \
    RobotoCondensedFont \
    RosemaryFont \
    RubikFont \
    SamsungOneFont \
    SonySketchFont \
    StoropiaFont \
    SurferFont \
    UbuntuFont

# Navbar
PRODUCT_PACKAGES += \
    GesturalNavigationOverlayLong \
    GesturalNavigationOverlayMedium \
    GesturalNavigationOverlayHidden
