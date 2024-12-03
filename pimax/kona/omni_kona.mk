#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from kona device
$(call inherit-product, device/pimax/kona/device.mk)

PRODUCT_DEVICE := kona
PRODUCT_NAME := omni_kona
PRODUCT_BRAND := pimax
PRODUCT_MODEL := portal
PRODUCT_MANUFACTURER := pimax

PRODUCT_GMS_CLIENTID_BASE := android-pimax

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="kona-user 10 QKQ1.211001.001 robot09221054 release-keys"

BUILD_FINGERPRINT := pimax/kona/kona:10/QKQ1.211001.001/robot09221054:user/release-keys
