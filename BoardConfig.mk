# Copyright (C) 2009 The Android Open Source Project
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

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := false

# inherit from common msm7x30 device
-include device/htc/msm7x30-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/htc/leo/BoardConfigVendor.mk

TARGET_BOARD_PLATFORM := qsd8k
TARGET_BOOTLOADER_BOARD_NAME := htcleo

BOARD_KERNEL_CMDLINE := no_console_suspend=1 wire.search_count=5
BOARD_KERNEL_BASE := 0x11800000
BOARD_KERNEL_NEW_PPPOX := true

BOARD_VENDOR_QCOM_AMSS_VERSION := 1550
BOARD_VENDOR_USE_AKMD := akm8973

BOARD_USE_FROYO_LIBCAMERA := true

TARGET_USES_16BPPSURFACE_FOR_OPAQUE := true
BOARD_NO_RGBX_8888 := true

BOARD_USE_KINETO_COMPATIBILITY := true

# # cat /proc/mtd
# dev:    size   erasesize  name
#mtd0: 00100000 00020000 "misc"
#mtd1: 00500000 00020000 "recovery"
#mtd2: 00500000 00020000 "boot"
#mtd3: 09600000 00020000 "system"
#mtd4: 02c00000 00020000 "cache"
#mtd5: 0d900000 00020000 "userdata"

BOARD_BOOTIMAGE_PARTITION_SIZE     := 0x00500000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 0x09600000   # limited so we enforce room to grow
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0d900000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_CUSTOM_RELEASETOOL := device/htc/leo/releasetools/squisher
TARGET_RELEASETOOLS_EXTENSIONS := device/htc/common
TARGET_PREBUILT_KERNEL := device/htc/leo/prebuilt/kernel
TARGET_PREBUILT_RECOVERY_KERNEL := device/htc/leo/prebuilt/recovery_kernel

# to enable the GPS HAL
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := leo
# AMSS version to use for GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 3200

