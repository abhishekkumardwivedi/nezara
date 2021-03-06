#
# Copyright 2015 The Android Open Source Project
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

LOCAL_PATH := hardware/bsp/arm/soc/udoox

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a9
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_KERNEL_ARCH := arm

# Disable building kernel and bootloader until we really support them.
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := true

# FIXME: Need to dynamically grab the serial number of the device from the hardware.
BOARD_KERNEL_CMDLINE := console=ttyMFD2 earlyprintk=ttyMFD2,keep androidboot.hardware=udoox androidboot.selinux=enforcing

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_SEPOLICY_DIRS += \
	$(LOCAL_PATH)/sepolicy \

TARGET_KERNEL_SRC := hardware/bsp/kernel/arm/linux_kernel
TARGET_KERNEL_DEFCONFIG := udoo_neo_defconfig
TARGET_KERNEL_CONFIGS := $(realpath $(LOCAL_PATH)/soc.kconf)
