# System
USE_CCACHE := 1
BLOCK_BUILD := true

# Target device
TARGET_DEVICE := angler

# Toolchain and other
TARGET_GCC_VERSION_KERNEL := 6.2

# benzoCore
KBUILD_BUILD_USER := xanaxdroid
KBUILD_BUILD_HOST := benzo

# Jack server heap size
ANDROID_JACK_VM_ARGS += "-Xmx4g"

# Force Java8
LOCAL_JAVA_LANGUAGE_VERSION := 1.8

# Prop Optimizations
PRODUCT_PROPERTY_OVERRIDES += \
    debug.performance.tuning=1 \
    keyguard.no_require_sim=true \
    ro.facelock.black_timeout=400 \
    ro.facelock.det_timeout=1500 \
    ro.facelock.rec_timeout=2500 \
    ro.facelock.lively_timeout=2500 \
    ro.facelock.est_max_time=600 \
    ro.facelock.use_intro_anim=false \
    ro.max.fling_velocity=12000 \
    ro.min.fling_velocity=8000 \
    wifi.supplicant_scan_interval=180 \
    windowsmgr.max_events_per_sec=150
