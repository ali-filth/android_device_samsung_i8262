## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := i8262

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/i8262/device_i8262.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := i8262
PRODUCT_NAME := cm_i8262
PRODUCT_BRAND := samsung
PRODUCT_MODEL := i8262
PRODUCT_MANUFACTURER := samsung
