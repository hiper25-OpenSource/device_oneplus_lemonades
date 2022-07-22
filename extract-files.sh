#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2022 The LineageOS Project
# Copyright (C) 2022 The ArrowOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

if [ "${BASH_SOURCE[0]}" != "${0}" ]; then
    return
fi

set -e

# Required!
export DEVICE=kebab
export DEVICE_COMMON=sm8250-common
export VENDOR=oneplus

"./../../${VENDOR}/${DEVICE_COMMON}/extract-files.sh" "$@"
