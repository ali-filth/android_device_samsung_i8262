$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/i8262/i8262-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/i8262/overlay

LOCAL_PATH := device/samsung/i8262
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Ramdisk
PRODUCT_PACKAGES += \
	fstab.qcom \
	charger \
	charger_res_images

# Philz
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/extra.fstab:recovery/root/etc/extra.fstab \
    $(LOCAL_PATH)/recovery/initlogo-cwm.rle:recovery/root/initlogo.rle \
    $(LOCAL_PATH)/recovery/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh

# TWRP
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/twrp.fstab:recovery/root/etc/twrp.fstab

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_i8262
PRODUCT_DEVICE := i8262
