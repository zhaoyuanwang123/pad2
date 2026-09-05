LOCAL_PATH := $(call my-dir)

# 继承 TWRP 通用配置（确保路径正确，可能为 vendor/twrp/config/common.mk）
$(call inherit-product, vendor/twrp/config/common.mk)

# 将 recovery.fstab 复制到 recovery ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery.fstab:recovery/root/etc/recovery.fstab
