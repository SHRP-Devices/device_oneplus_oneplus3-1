#
# Copyright (C) 2017 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8996
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8996
TARGET_BOARD_PLATFORM_GPU := qcom-adreno530

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := kryo

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Crypto
TARGET_CRYPTFS_HW_PATH := vendor/qcom/opensource/commonsys/cryptfs_hw
TARGET_HW_DISK_ENCRYPTION := true

# Kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 cma=32M@0-0xffffffff androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_TAGS_OFFSET := 0x02000000
BOARD_RAMDISK_OFFSET     := 0x02200000
TARGET_PREBUILT_KERNEL := device/oneplus/oneplus3/Image.gz-dtb

# Init
TARGET_INIT_VENDOR_LIB := libinit_oneplus3
TARGET_RECOVERY_DEVICE_MODULES := libinit_oneplus3
TARGET_PLATFORM_DEVICE_BASE := /devices/soc/

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3154116608
BOARD_USERDATAIMAGE_PARTITION_SIZE := 57588281344 # 57588297728 - 16384
BOARD_FLASH_BLOCK_SIZE := 262144

# Recovery
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

BOARD_HAS_NO_REAL_SDCARD := true
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_EXTRA_LANGUAGES := true
TW_HAS_EDL_MODE := true
TW_INCLUDE_CRYPTO := true
TW_DEFAULT_BRIGHTNESS := 80
TW_INCLUDE_NTFS_3G := true
TW_IGNORE_MISC_WIPE_DATA := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_USE_TOOLBOX := true

# SHRP Configuration
SHRP_MAINTAINER := TarD3X
SHRP_DEVICE_CODE := oneplus3
SHRP_EDL_MODE := 1
SHRP_EXTERNAL := /external_sd
SHRP_INTERNAL := /sdcard
SHRP_OTG := /usb_otg
SHRP_FLASH := 1
SHRP_FLASH_MAX_BRIGHTNESS := 200
SHRP_FONP_1 := /sys/class/leds/led:torch_0/brightness
SHRP_FONP_2 := /sys/class/leds/led:torch_1/brightness
SHRP_FONP_3 := /sys/class/leds/led:switch/brightness
SHRP_REC := /dev/block/bootdevice/by-name/recovery
SHRP_AB := false
SHRP_REC_TYPE := Universal
SHRP_DEVICE_TYPE := A-Only
SHRP_OFFICIAL := true
SHRP_EXPRESS := true
SHRP_DARK := true