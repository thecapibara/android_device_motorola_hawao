#
# SPDX-FileCopyrightText: 2022-2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device
$(call inherit-product, device/motorola/hawao/device.mk)

# Inherit some common Infinity stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

INFINITY_BUILD_TYPE := UNOFFICIAL
INFINITY_MAINTAINER := "JustGL"
TARGET_SUPPORTS_BLUR := true
WITH_GAPPS := true
TARGET_SHIPS_FULL_GAPPS := false
TARGET_SHIPS_GOOGLE_DIALER := false
USE_MOTO_CALCULATOR := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := infinity_hawao
PRODUCT_DEVICE := hawao
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g42
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="hawao_g-user 13 T2SES33.73-23-2-14 d2cf2-d2c7b release-keys" \
    BuildFingerprint=motorola/hawao_g/hawao:13/T2SES33.73-23-2-14/d2cf2-d2c7b:user/release-keys \
    DeviceProduct=hawao_g
