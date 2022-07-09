#
# Copyright (C) 2018 The LineageOS Project
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

# Inherit from oneplus sm8250-common
-include device/oneplus/sm8250-common/BoardConfigCommon.mk

DEVICE_PATH := device/oneplus/lemonades

# Als correction
SOONG_CONFIG_ONEPLUS_KONA_SENSORS_ALS_POS_L := 680
SOONG_CONFIG_ONEPLUS_KONA_SENSORS_ALS_POS_T := 0
SOONG_CONFIG_ONEPLUS_KONA_SENSORS_ALS_POS_R := 780
SOONG_CONFIG_ONEPLUS_KONA_SENSORS_ALS_POS_B := 50
SOONG_CONFIG_ONEPLUS_KONA_SENSORS_ALS_SCREEN_WIDTH := $(TARGET_SCREEN_WIDTH)
SOONG_CONFIG_ONEPLUS_KONA_SENSORS_ALS_SCREEN_HEIGHT := $(TARGET_SCREEN_HEIGHT)

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include

# Display
TARGET_SCREEN_DENSITY := 420

# Kernel
TARGET_KERNEL_CONFIG := kebab_defconfig

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Partitions
BOARD_ONEPLUS_DYNAMIC_PARTITIONS_SIZE := 3753902080
BOARD_SUPER_PARTITION_SIZE := 7516192768

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 103

# inherit from the proprietary version
-include vendor/oneplus/lemonades/BoardConfigVendor.mk
