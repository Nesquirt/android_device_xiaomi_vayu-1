#
# Copyright (C) 2018-2021 ArrowOS
# Copyright (C) 2021 The XPerience Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit device configurations
$(call inherit-product, device/xiaomi/vayu/device.mk)

# Inherit common CygnusOS configurations
$(call inherit-product, vendor/cygnus/configs/common.mk)
$(call inherit-product, device/qcom/common/common.mk)

TARGET_BOOT_ANIMATION_RES := 1080
WITH_GAPPS := true

PRODUCT_NAME := cygnus_vayu
PRODUCT_DEVICE := vayu
PRODUCT_BRAND := POCO
PRODUCT_MODEL := Poco X3 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi


PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vayu_global-user 12 RKQ1.200826.002 V13.0.4.0.SJUMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/vayu_global/vayu:12/RKQ1.200826.002/V13.0.4.0.SJUMIXM:user/release-keys

