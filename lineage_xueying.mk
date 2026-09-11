#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from xueying device
$(call inherit-product, device/oneplus/xueying/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_foldable_book_telephony.mk)

PRODUCT_NAME := lineage_xueying
PRODUCT_DEVICE := xueying
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := CPH2551

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="qssi-user 16 BP2A.250605.015 1783483843486 release-keys" \
    BuildFingerprint=OnePlus/CPH2551EEA/OP5973L1:16/BP2A.250605.015/T.R4T3.50b19fc-2c0234e-2c065bd:user/release-keys \
    DeviceName=OP5973L1 \
    DeviceProduct=CPH2551 \
    SystemDevice=OP5973L1 \
    SystemName=CPH2551
