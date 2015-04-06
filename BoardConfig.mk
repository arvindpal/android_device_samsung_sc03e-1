#
# Copyright (C) 2013 The CyanogenMod Project
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

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk

-include device/samsung/smdk4412-common/BoardCommonConfig.mk
-include device/samsung/smdk4412-qcom-common/BoardCommonConfig.mk

LOCAL_PATH := device/samsung/sc03e

# Compiler flags
ENABLE_GCCONLY := true
GRAPHITE_OPTS := true
STRICT_ALIASING := true
SUPPRES_UNUSED_WARNING := true
TARGET_GCC_VERSION_EXP := 4.8
TARGET_USE_PIPE := true
USE_O3_OPTIMIZATIONS := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# RIL
COMMON_GLOBAL_CFLAGS += -DPROPERTY_PERMS_APPEND='{ "ril.ks.status", AID_SYSTEM, 0 },'

# Camera
COMMON_GLOBAL_CFLAGS += -DCAMERA_WITH_CITYID_PARAM

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/exynos4412dcm
TARGET_KERNEL_CONFIG := kbc_sc03e_aosp_defconfig

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/sc03e/rootdir/fstab.smdk4x12
RECOVERY_FSTAB_VERSION := 2

# assert
TARGET_OTA_ASSERT_DEVICE := m3,m3xx,sc03e,SC-03E,i9305,GT-I9305

# Linker
BOARD_NO_CHECK_PIE_BINARY := true

# inherit from the proprietary version
-include vendor/samsung/sc03e/BoardConfigVendor.mk

# Selinux
BOARD_SEPOLICY_DIRS += \
    device/samsung/sc03e/selinux

BOARD_SEPOLICY_UNION += \
    bluetooth.te \
    radio.te \
    file_contexts \
    te_macros \
    device.te \
    dhcp.te \
    domain.te \
    file.te \
    init.te \
    kickstart.te \
    mediaserver.te \
    netmgrd.te \
    qmiproxy.te \
    qmuxd.te \
    rild.te \
    secril.te \
    servicemanager.te \
    sysinit.te \
    system.te \
    system_server.te \
    time_daemon.te \
    ueventd.te \
    vold.te \
    wpa.te \
    wpa_supplicant.te \
    zygote.te
