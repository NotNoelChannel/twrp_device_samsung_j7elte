USE_CAMERA_STUB := true
LOCAL_PATH := device/samsung/j7elte


TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := universal7580

# Platform
TARGET_BOARD_PLATFORM        := exynos7580
TARGET_BOARD_PLATFORM_GPU := mali-t720

# Architecture
TARGET_ARCH                  := arm64
TARGET_ARCH_VARIANT          := armv8-a
TARGET_CPU_ABI               := arm64-v8a
TARGET_CPU_ABI2              :=
TARGET_CPU_VARIANT           := generic
TARGET_CPU_SMP               := true
TARGET_2ND_ARCH              := arm
TARGET_2ND_ARCH_VARIANT      := armv7-a-neon
TARGET_2ND_CPU_ABI           := armeabi-v7a
TARGET_2ND_CPU_ABI2          := armeabi
TARGET_2ND_CPU_VARIANT       := generic

BOARD_KERNEL_CMDLINE :=	buildvariant=eng
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/zImage
TARGET_PREBUILT_DTB    := $(LOCAL_PATH)/prebuilt/dtb
BOARD_KERNEL_PAGESIZE := 2048
# 000RU = recovery kernel, 000KU = system kernel
BOARD_MKBOOTIMG_ARGS     := --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --dt $(LOCAL_PATH)/prebuilt/dtb

BOARD_BOOTIMAGE_PARTITION_SIZE     := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 39845888
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 3145728000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12096372736
BOARD_FLASH_BLOCK_SIZE := 131072

# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_CUSTOM_BOOTIMG_MK :=  device/samsung/j7elte/bootimg.mk

# TWRP specific build flags
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/13580000.usb/gadget/lun%d/file"
TW_BRIGHTNESS_PATH := "/sys/devices/14800000.dsim/backlight/panel/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 162
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_NO_EXFAT_FUSE := true
TW_MTP_DEVICE := "/dev/mtp_usb"
TW_EXCLUDE_SUPERSU := true

# Encryption support
TW_INCLUDE_CRYPTO := true

# PBRP Flags
# Exclude Nano & Bash
TW_EXCLUDE_NANO := true
TW_EXCLUDE_BASH := true
