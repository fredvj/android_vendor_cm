# Inherit device configuration for Huawei U8860
$(call inherit-product, device/huawei/u8860/device_u8860.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_u8860
PRODUCT_BRAND := huawei
PRODUCT_DEVICE := u8860
PRODUCT_MODEL := U8860
PRODUCT_MANUFACTURER := Huawei
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=space BUILD_ID=2012-05 BUILD_FINGERPRINT=space:2.3.7/2012-05/release-keys PRIVATE_BUILD_DESC="Add desc. here"

# Release name and versioning
PRODUCT_RELEASE_NAME := U8860
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

#
# Copy specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
