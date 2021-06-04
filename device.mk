LOCAL_PATH := device/bq/freezerhd

# Kernel
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

# Copy the kernel
PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Rootdir
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/init.recovery.mt8163.rc:root/init.recovery.mt8163.rc

# MD32 Firmware Data
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/firmware_data/md32_p.bin:md32_p.bin \
    $(LOCAL_PATH)/recovery/firmware_data/md32_p.bin:md32_d.bin

# Treble Property Override
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.treble.enabled=true

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Product Name
PRODUCT_NAME := freezerhd
