# System
export USE_CCACHE := 1
export USE_SYSTEM_CCACHE := 1
export BLOCK_BUILD := true

# Target device
export TARGET_DEVICE := angler

# Build
export ANDROID_COMPILE_WITH_JACK := false
export DISABLE_OPTIMIZATIONS := false
ifneq ($(DISABLE_OPTIMIZATIONS),true)
export DONT_ERROROUT := false
export USE_O3_OPTIMIZATIONS := false
export FORCE_DISABLE_DEBUGGING := true
export ENABLE_IPA_ANALYSER := true
export TARGET_USE_PIPE := true
export CORTEX_TUNINGS := true
export ENABLE_PTHREAD := true
export ENABLE_GOMP := true
export GRAPHITE_OPTS := true
export ENABLE_EXTRAGCC := true
export STRICT_ALIASING := true
export ENABLE_SANITIZE := true
endif

# Toolchain and other
export TARGET_NDK_GCC_VERSION := 4.9
export TARGET_GCC_VERSION_EXP := 4.9
export TARGET_GCC_VERSION := 4.9
export TARGET_GCC_VERSION_KERNEL := 7.0

# benzoCore
export KBUILD_BUILD_USER := xanaxdroid
export KBUILD_BUILD_HOST := benzo

# Prop Optimizations
PRODUCT_PROPERTY_OVERRIDES += \
    debug.performance.tuning=1 \
    keyguard.no_require_sim=true \
    persist.service.lgospd.enable=0 \
    persist.service.pcsync.enable=0 \
    ro.facelock.black_timeout=400 \
    ro.facelock.det_timeout=1500 \
    ro.facelock.rec_timeout=2500 \
    ro.facelock.lively_timeout=2500 \
    ro.facelock.est_max_time=600 \
    ro.facelock.use_intro_anim=false \
    ro.max.fling_velocity=12000 \
    ro.min.fling_velocity=8000 \
    ro.ril.enable.amr.wideband=1 \
    ro.sys.fw.bg_apps_limit=20 \
    ro.setupwizard.network_required=false \
    ro.setupwizard.gservices_delay=-1 \
    ro.com.google.networklocation=0 \
    touch.pressure.scale=2 \
    wifi.supplicant_scan_interval=180 \
    windowsmgr.max_events_per_sec=150

# Battery
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.hw_power_saving=1 \
    ro.ril.disable.power.collapse=0 \
    persist.radio.add_power_save=1 \
    persist.sys.use_dithering=0 \
    pm.sleep_mode=1 \
    power_supply.wakeup=enable \
    power.saving.mode=1

