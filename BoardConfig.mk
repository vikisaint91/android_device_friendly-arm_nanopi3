#
# Copyright (C) 2011 The Android Open-Source Project
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

TARGET_BOARD_INFO_FILE := device/friendly-arm/nanopi3/board-info.txt

TARGET_BOARD_PLATFORM  := slsiap
TARGET_BOOTLOADER_BOARD_NAME := nanopi3

TARGET_CPU_ABI  := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP  := true
TARGET_ARCH     := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT  := cortex-a9
ARCH_ARM_HAVE_TLS_REGISTER := true

# chip variation
TARGET_CPU_VARIANT2  := s5p6818

TARGET_NO_BOOTLOADER := true
BOARD_KERNEL_BASE := 0x48000000
BOARD_PAGE_SIZE := 0x0002048
TARGET_PREBUILT_KERNEL := kernel/friendly-arm/nanopi3/arch/arm/boot
BOARD_USES_UBOOT := true


TARGET_PROVIDES_INIT_RC  := true

# recovery
TARGET_RECOVERY_FSTAB := device/friendly-arm/nanopi3/recovery.fstab

# opengl
BOARD_EGL_CFG := device/friendly-arm/nanopi3/egl.cfg

USE_OPENGL_RENDERER := true
IGN_EGL_BUFFERCOUNT := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# audio
BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_ALSA_AUDIO    := false
BOARD_USES_CARD_SPDIF    := false

# Bluetooth
BOARD_HAVE_BLUETOOTH     := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/friendly-arm/nanopi3/bluetooth

# camera
BOARD_HAS_CAMERA := true
BOARD_CAMERA_BACK:= true

# v4l2
BOARD_USES_HDMI  := true
BOARD_USES_RESOL := true

# sensor
BOARD_HAS_SENSOR := false
BOARD_SENSOR_TYPE := general

# external ffmpeg plugin
-include device/friendly-arm/nanopi3/BoardConfigFFmpeg.mk

# Nexell Dual Audio
EN_DUAL_AUDIO := false

# wifi
BOARD_WIFI_VENDOR := ap6212

# Wi-Fi related defines
ifeq ($(BOARD_WIFI_VENDOR),ap6212)
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WLAN_DEVICE           := bcmdhd
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_MODULE_NAME     := "bcmdhd"
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/bcmdhd.ko"
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA     := "/vendor/firmware/fw_bcm43438a0.bin"
WIFI_DRIVER_FW_PATH_AP      := "/vendor/firmware/fw_bcm43438a0_apsta.bin"
endif

# RIL
BOARD_HAS_RIL := false

# HWC
SLSIAP_HWC_VERSION := 2


# packaging for emmc, sd
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE     := 67108864   #  64MB
BOARD_BOOTIMAGE_FILE_SYSTEM_TYPE   := ext4
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 790626304  # 754MB
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2466250752 # 2.3GB
BOARD_CACHEIMAGE_PARTITION_SIZE    := 448790528  # 428MB
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE  := ext4
BOARD_FLASH_BLOCK_SIZE := 4096

