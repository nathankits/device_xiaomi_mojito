#
# Copyright (C) 2021 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from mojito device
$(call inherit-product, device/xiaomi/mojito/device.mk)

# Inherit some common Aosp stuff
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_PIXEL_CHARGER := true

# Arcabe Official
ARCANE_OFFICIAL := true
ARCANE_DEVICE := Mojito
ARCANE_MAINTAINER := Nathaniel_Quitua

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_mojito
PRODUCT_DEVICE := mojito
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 10
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := "google/redfin/redfin:11/RQ3A.211001.001/7641976:user/release-keys"