#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from apollo device
$(call inherit-product, device/xiaomi/apollo/device.mk)

# Inherit some common NusantaraProject stuff.
$(call inherit-product, vendor/aosp/common.mk)

TARGET_USES_BLUR := true
USE_PIXEL_CHARGING := true
TARGET_BOOT_ANIMATION_RES := 1080
USE_AOSP_CLOCK := true
WITH_LAWNCHAIR := true
WITH_GAPPS := false

# Product
PRODUCT_NAME := aosp_apollo
PRODUCT_DEVICE := apollo
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi

ARCANA_DEVICE := Apollo
ARCANA_MAINTAINER := Realizeyes

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
