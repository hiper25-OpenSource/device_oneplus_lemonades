#
# Copyright (C) 2022 The ArrowOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/oneplus/lemonades

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include

# Display
TARGET_SCREEN_DENSITY := 420

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/init/fstab.qcom

# Inherit from oneplus sm8250-common
-include device/oneplus/sm8250-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/oneplus/kebab/BoardConfigVendor.mk
