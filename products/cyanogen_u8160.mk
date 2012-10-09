# Inherit AOSP device configuration for U8160.
$(call inherit-product, device/huawei/u8160/device_u8160.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full_no_themes.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_u8160
PRODUCT_BRAND := huawei
PRODUCT_DEVICE := u8160
PRODUCT_MODEL := U8160
PRODUCT_MANUFACTURER := Huawei

# Extra LDPI overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/ldpi

# Release name and versioning
PRODUCT_RELEASE_NAME := U8160
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

PRODUCT_COPY_FILES +=  \
     vendor/cyanogen/prebuilt/ldpi/media/bootanimation.zip:system/media/bootanimation.zip
