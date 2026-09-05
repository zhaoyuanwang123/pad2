# 基础架构
TARGET_ARCH := arm64
TARGET_CPU_ABI := arm64-v8a
TARGET_ARCH_VARIANT := armv8-2a
TARGET_CPU_VARIANT := kryo

# 平台
TARGET_BOARD_PLATFORM := pineapple
TARGET_BOOTLOADER_BOARD_NAME := pineapple

# 分区大小（来自 fastboot，单位：字节）
BOARD_BOOTIMAGE_PARTITION_SIZE := 100663296      # 96 MiB
BOARD_INIT_BOOT_IMAGE_PARTITION_SIZE := 8388608  # 8 MiB
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864   # 64 MiB
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := 100663296 # 96 MiB (vendor_boot 大小)

# 动态分区
BOARD_SUPER_PARTITION_SIZE := 17179869184        # 16 GiB
BOARD_SUPER_PARTITION_GROUPS := qti_dynamic_partitions
BOARD_QTI_DYNAMIC_PARTITIONS_SIZE := 17179869184
BOARD_QTI_DYNAMIC_PARTITIONS_PARTITION_LIST := system system_ext product vendor vendor_dlkm system_dlkm odm cust preas preavs version preload

# 预编译内核与 DTB
TARGET_PREBUILT_KERNEL := device/honor/rod2/prebuilt/kernel
TARGET_PREBUILT_DTB := device/honor/rod2/prebuilt/dtb.img

# 内核 cmdline（从 /proc/cmdline 提取，可稍作精简但保留关键项）
BOARD_KERNEL_CMDLINE := console=ttynull stack_depot_disable=on cgroup_disable=pressure kasan.page_alloc.sample=10 kasan.stacktrace=off kvm-arm.mode=protected bootconfig ioremap_guard loglevel=6 kpti=0 log_buf_len=256K swiotlb=noforce loop.max_part=7 pcie_ports=compat irqaffinity=0-2 cpufreq.default_governor=performance sysctl.kernel.sched_pelt_multiplier=4 kasan=off cgroup.memory=nokmem,nosocket disable_dma32=on kernel.panic_on_rcu_stall=1 fw_devlink.strict=1 service_locator.enable=1 rcupdate.rcu_expedited=1 rcu_nocbs=0-7 no-steal-acc printk.console_no_auto_verbose=1 can.stats_timer=0 ftrace_dump_on_oops firmware_class.path=/vendor/firmware_mnt/image,/vendor/firmware_mnt/image/kiwi,/vendor/vm-system/oemvm/boot,/vendor/vm-system/trustedvm/boot,/vendor/firmware,/vendor/firmware/wlan/qca_cld/kiwi_v2 pci-msm-drv.pcie_sm_regs=0x1D07000,0x1040,0x1048,0x3000,0x1 video=vfb:640x400,bpp=32,memsize=3072000 cpufreq.default_governor=performance bootconfig buildvariant=user

# 文件系统支持
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_EROFS := true
TARGET_USERIMAGES_USE_F2FS := true

# 加密
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_FBE := true
TW_INCLUDE_CRYPTO_FBE := true
TW_USE_FSCRYPT_POLICY := 2

# 常用 TWRP 设置
TW_THEME := portrait_hdpi
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_INCLUDE_REPACKTOOLS := true
TW_INCLUDE_RESETPROP := true
TW_INCLUDE_LIBRESETPROP := true
TW_INCLUDE_LPDUMP := true
TW_INCLUDE_LPTOOLS := true
TW_NO_EXFAT := true
TW_DEFAULT_LANGUAGE := zh_CN
