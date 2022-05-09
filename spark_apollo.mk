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

# Inherit some common derpfest stuff.
$(call inherit-product, vendor/spark/config/common_full_phone.mk)

# derpfest flag
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64
TARGET_USES_BLUR := true
TARGET_SUPPORTS_BLUR := true
USE_PIXEL_CHARGING := true
USE_AOSP_CLOCK := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_NOW_PLAYING := true
TARGET_BUILD_GRAPHENEOS_CAMERA := true



# Product
PRODUCT_NAME := spark_apollo
PRODUCT_DEVICE := apollo
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 10T/Pro
PRODUCT_PRODUCT_PROPERTIES += \
ro.spark.maintainer=Realizeyes

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
