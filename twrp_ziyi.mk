#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Configure base.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit from those products
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)

# Inherit from device configuration
$(call inherit-product, device/xiaomi/ziyi/device.mk)
# Inherit from TWRP common configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Fox settings
$(call inherit-product-if-exists, device/xiaomi/ziyi/fox_ziyi.mk)


PRODUCT_RELEASE_NAME := ziyi

PRODUCT_DEVICE := ziyi
PRODUCT_NAME := twrp_ziyi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Xiaomi 13 Lite
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
