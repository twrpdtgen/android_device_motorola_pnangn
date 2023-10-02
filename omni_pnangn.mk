#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from pnangn device
$(call inherit-product, device/motorola/pnangn/device.mk)

PRODUCT_DEVICE := pnangn
PRODUCT_NAME := omni_pnangn
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g 5G - 2023
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="pnangn_g-user 11 T1TPN33.58-68-1-2-1 08053 release-keys"

BUILD_FINGERPRINT := motorola/pnangn_g/pnangn:11/T1TPN33.58-68-1-2-1/08053:user/release-keys
