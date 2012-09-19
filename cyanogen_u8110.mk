# Inherit AOSP device configuration for dream_sapphire.
$(call inherit-product, device/huawei/u8110/device_u8110.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common.mk)

# Include GSM-only stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_u8110
PRODUCT_BRAND := huawei
PRODUCT_DEVICE := u8110
PRODUCT_MODEL := U8110
PRODUCT_MANUFACTURER := Huawei
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=u8110 BUILD_ID='D&C' BUILD_FINGERPRINT=google/passion/passion:2.3.7/'D&C'/121341:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.7 'D&C' 121341 release-keys"

#
# Set ro.modversion
#
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-7-$(shell date +%m%d%Y)-NIGHTLY-U8110_D&C
else
     ifdef CYANOGEN_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7-$(shell date +%m%d%Y)-RELEASE-U8110_D&C
else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7-$(shell date +%m%d%Y)-U8110_D&C
      endif
endif



#
# Copy DS specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/ldpi/media/bootanimation.zip:system/media/bootanimation.zip
