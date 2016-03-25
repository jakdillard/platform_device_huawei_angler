# Inherit base AOSP device configuration
$(call inherit-product, device/huawei/angler/aosp_angler.mk)

# Inherit custom product configuration
$(call inherit-product, vendor/jdm/config/common.mk)

# Override product naming
PRODUCT_NAME := jdm_angler
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6P
PRODUCT_MANUFACTURER := HUAWEI
PRODUCT_RESTRICT_VENDOR_FILES := false

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
BUILD_FINGERPRINT="google/angler/angler:6.0.1/MMB29Q/2480792:user/release-keys" \
PRIVATE_BUILD_DESC="angler-user 6.0.1 MMB29Q 2480792 release-keys"

# misc
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.force_eri_from_xml=true \
    ro.telephony.get_imsi_from_sim=true

# Miracast support
PRODUCT_PROPERTY_OVERRIDES += \
    persist.debug.wfd.enable=1

# drmservice prop
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

# facelock properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.facelock.black_timeout=400 \
    ro.facelock.det_timeout=1500 \
    ro.facelock.rec_timeout=2500 \
    ro.facelock.lively_timeout=2500 \
    ro.facelock.est_max_time=600 \
    ro.facelock.use_intro_anim=false

# tethering
PRODUCT_PROPERTY_OVERRIDES += \
    net.tethering.noprovisioning=true

# Product extra packages
PRODUCT_PACKAGES += \
    CellBroadcastReceiver \
    Stk    
