#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from a22x device
$(call inherit-product, device/samsung/a22x/device.mk)

PRODUCT_DEVICE := a22x
PRODUCT_NAME := lineage_a22x
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A226BR
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a22xub-user 13 TP1A.220624.014 A226BRUBU8DWK2 release-keys"

BUILD_FINGERPRINT := samsung/a22xub/a22x:12/SP1A.210812.016/A226BRUBU8DWK2:user/release-keys
