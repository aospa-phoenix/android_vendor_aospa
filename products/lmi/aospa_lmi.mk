# Copyright (C) 2022 Paranoid Android
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Check for target product
ifeq (aospa_lmi,$(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from the custom device configuration
$(call inherit-product, device/xiaomi/lmi/device.mk)

# Inherit common AOSPA configuration
$(call inherit-product, vendor/aospa/target/product/aospa-target.mk)

# Boot animation resolution.
TARGET_BOOT_ANIMATION_RES := 1080

# Override AOSP properties
PRODUCT_NAME := aospa_lmi
PRODUCT_DEVICE := lmi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F2 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

endif
