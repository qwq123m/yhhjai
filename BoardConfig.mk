device_PATH：=device/vivo/PD2049

#架构
target_ARCH：=arm64
target_ARCH_VARIANT：=ARMv8-A
target_CPU_ABI：=arm64-v8a
target_CPU_ABI2：=
target_CPU_VARIANT：=通用
target_CPU_VARIANT_RUNTIME：=cortex-a55

target_2ND_ARCH：=arm
target_2ND_ARCH_VARIANT：=$(TARGET_ARCH_VARIANT)
target_2ND_CPU_ABI：=armeabi-v7a
target_2ND_CPU_ABI2：=armeabi
target_2ND_CPU_VARIANT：=$(TARGET_CPU_VARIANT)
target_2ND_CPU_VARIANT_RUNTIME：=$(TARGET_CPU_VARIANT)

#断言
target_OTA_ASSERT_DEVICE：=PD2049

#Bootloader
target_BOOTLOADER_BOARD_NAME：=Lahaina
target_NO_BOOTLOADER：=true
target_uses_UEFI：=true

#建置规则
allow_MISSING_DEPENDENCIES：=true

#内核
board_BOOT_HEADER_VERSION：=3
board_KERNEL_BASE：=0
board_KERNEL_CMDLINE：=bootopt=64S3，32N2，64N2
board_KERNEL_PAGESIZE：=4096
board_RAMDISK_OFFSET：=
板_核心_标签_偏移量：=
board_MKBOOTIMG_ARGS+=--header_version$(BOARD_BOOT_HEADER_VERSION)
board_MKBOOTIMG_ARGS+=--ramdisk_offset$(BOARD_RAMDISK_OFFSET)
board_MKBOOTIMG_ARGS+=--tags_offset$(BOARD_KERNEL_TAGS_OFFSET)
board_KERNEL_IMAGE_NAME：=图像

#Kernel-预建
target_prebuilt_KERNEL：=$(DEVICE_PATH)/prebuilt/kernel
target_prebuilt_DTB：=$(DEVICE_PATH)/prebuilt/dtb.img
board_MKBOOTIMG_ARGS+=--db$(TARGET_prebuilt_DTB)

分区数
board_FLASH_BLOCK_SIZE：=262144
board_BootImage_PARTITION_SIZE：=100663296
board_RECOVERYIMAGE_PARTITION_SIZE：=100663296
board_VENDOR_BootImage_PARTITION_SIZE：=100663296
board_systemimage_PARTITION_TYPE：=erofs
board_USERDATAIMAGE_FILE_SYSTEM_TYPE：=erofs
board_VENDORIMAGE_FILE_SYSTEM_TYPE：=erofs
target_COPY_OUT_VENDOR：=供应商
board_SUPER_PARTITION_SIZE：=11274289152
board_SUPER_PARTITION_GROUPS：=group_foo
board_Xiaomi_DYNAMIC_PARTITIONS_PARTITION_LIST：=系统供应商产品odm vgc oem
Board_Xiaomi_DYNAMIC_PARTITIONS_SIZE：=11270094848

#平台
target_BOARD_PLATFORM：=Lahaina

#恢复
board_HAS_LARGE_filesystem：=true
target_RECOVERY_PIXEL_FORMAT：=RGBX_8888
target_USERIMAGES_USE_EXT4：=true
target_USERIMAGES_USE_F2FS：=true

#高音
board_VndK_VERSION：=30

#验证开机
board_AVB_ENABLE：=true
board_AVB_MAKE_VBMETA_IMAGE_ARGS+=--flags3

TWRP配置数量
TW_DEFAULT_LANGUAGE：=zh_CN
TW_EXTRA_LANGUAGEES：=true
TW_THEME：=纵向hdpi
TW_INCLUDE_FASTBOOTD：=true

#调试
target_uses_logd：=true
TWRP_INCLUDE_logcat：=true
