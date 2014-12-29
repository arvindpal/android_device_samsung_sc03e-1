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

LOCAL_PATH := device/samsung/sc02e

# Init files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab.smdk4x12:root/fstab.smdk4x12 \
    $(LOCAL_PATH)/rootdir/init.target.rc:root/init.target.rc \
    $(LOCAL_PATH)/rootdir/ueventd.smdk4x12.rc:root/ueventd.smdk4x12.rc \
    $(LOCAL_PATH)/rootdir/lpm.rc:root/lpm.rc 
#    $(LOCAL_PATH)/rootdir/init.carrier.rc:root/init.carrier.rc \
#    $(LOCAL_PATH)/rootdir/sbin/init.prop.sh:root/sbin/init.prop.sh

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

#for debug
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0

# Default Locale
PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.locale.language=ja \
    ro.product.locale.region=JP

# Include common makefile
$(call inherit-product, device/samsung/sc02e/common.mk)

$(call inherit-product-if-exists, vendor/samsung/sc02e/sc02e-vendor.mk)
