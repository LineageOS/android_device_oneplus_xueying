#
# Copyright (C) 2021-2026 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    $(LOCAL_PATH)/configs/audio/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml

# Boot animation
$(call soong_config_set_bool,bootanimation,multidisplay,true)

TARGET_SCREEN_HEIGHT := 2484
TARGET_SCREEN_WIDTH := 1116

# Camera firmware
PRODUCT_PACKAGES += \
    firmware_explorer_ddr_data.bin_symlink

# Device state
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/devicestate/device_state_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/devicestate/device_state_configuration.xml \

# Display
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/display/displayconfig_main.xml:$(TARGET_COPY_OUT_VENDOR)/etc/displayconfig/display_id_4630946717172870531.xml \
    $(LOCAL_PATH)/configs/display/displayconfig_sub.xml:$(TARGET_COPY_OUT_VENDOR)/etc/displayconfig/display_id_4630946316123810436.xml \
    $(LOCAL_PATH)/configs/display/display_layout_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/displayconfig/display_layout_configuration.xml

# IR
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.consumerir.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/android.hardware.consumerir.xml

PRODUCT_PACKAGES += \
    android.hardware.ir-service.oplus

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay-lineage

PRODUCT_PACKAGES += \
    FrameworksResTargetEuicc \
    KeyHandlerResTarget \
    OPlusFrameworksResTarget \
    OPlusSettingsProviderResTarget \
    OPlusSettingsResTarget \
    OPlusSystemUIResTarget

# Power
$(call soong_config_set,qtipower,tap_to_wake_node,/proc/touchpanel/double_tap_enable)

# Regional properties
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/vendor/odm/etc/22899/build.EU.prop:$(TARGET_COPY_OUT_ODM)/etc/22899/build.EU.prop \
    $(LOCAL_PATH)/recovery/root/vendor/odm/etc/22899/build.IN.prop:$(TARGET_COPY_OUT_ODM)/etc/22899/build.IN.prop \
    $(LOCAL_PATH)/recovery/root/vendor/odm/etc/22899/build.NA.prop:$(TARGET_COPY_OUT_ODM)/etc/22899/build.NA.prop \
    $(LOCAL_PATH)/recovery/root/vendor/odm/etc/22899/build.default.prop:$(TARGET_COPY_OUT_ODM)/etc/22899/build.default.prop

# Sensors
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.hinge_angle.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.hinge_angle.xml

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Telephony
PRODUCT_PACKAGES += \
    OplusEsimSwitcher \
    OplusEuicc

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.euicc.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.euicc.xml

# Vibrator
PRODUCT_PACKAGES += \
    vendor.qti.hardware.vibrator.service.oplus

$(call soong_config_set_bool,OPLUS_LINEAGE_VIBRATOR_HAL,USE_EFFECT_STREAM,true)

# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/oneplus/sm8550-common/common.mk)

# Inherit from the proprietary files makefile.
$(call inherit-product, vendor/oneplus/xueying/xueying-vendor.mk)
