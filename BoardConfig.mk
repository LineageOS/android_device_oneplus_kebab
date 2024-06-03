#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Include the common OEM chipset BoardConfig.
include device/oneplus/sm8250-common/BoardConfigCommon.mk

DEVICE_PATH := device/oneplus/kebab

# Display
TARGET_SCREEN_DENSITY := 450

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml
ODM_MANIFEST_FILES += $(DEVICE_PATH)/manifest_odm.xml

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Partitions
ifneq ($(WITH_GMS),true)
BOARD_PRODUCTIMAGE_PARTITION_RESERVED_SIZE := 990000000
endif
BOARD_ONEPLUS_DYNAMIC_PARTITIONS_SIZE := 3753902080
BOARD_SUPER_PARTITION_SIZE := 7516192768

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/init/fstab.qcom
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 103

# Touch
SOONG_CONFIG_NAMESPACES += OPLUS_LINEAGE_TOUCH_HAL
SOONG_CONFIG_OPLUS_LINEAGE_TOUCH_HAL := INCLUDE_DIR
SOONG_CONFIG_OPLUS_LINEAGE_TOUCH_HAL_INCLUDE_DIR := $(DEVICE_PATH)/touch/include

# Include the proprietary files BoardConfig.
include vendor/oneplus/kebab/BoardConfigVendor.mk
