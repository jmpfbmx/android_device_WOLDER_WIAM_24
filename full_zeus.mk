#
# Copyright (C) 2020 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/wolder/zeus

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := zeus
PRODUCT_NAME := full_zeus
PRODUCT_BRAND := wolder
PRODUCT_MODEL := Wiam 24
PRODUCT_MANUFACTURER := wolder

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/fstab.mt6580:root/fstab.mt6580 \
    $(LOCAL_PATH)/recovery/root/init.mt6580.rc:root/init.mt6580.rc \
    $(LOCAL_PATH)/recovery/root/init.recovery.mt6580.rc:root/init.recovery.mt6580.rc \
    $(LOCAL_PATH)/recovery/root/init.mt6580.usb.rc:root/init.recovery.mt6580.rc \
    $(LOCAL_PATH)/recovery/root/ueventd.mt6580.rc:root/ueventd.mt6580.rc \
    $(LOCAL_PATH)/recovery/root/sbin/flash_recovery:root/sbin/flash_recovery

