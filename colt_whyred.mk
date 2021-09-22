#
# Copyright (C) 2018-2019 The LineageOS Project
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
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Enable updating of APEXes
#$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Inherit from whyred device
$(call inherit-product, device/xiaomi/whyred/device.mk)

# Inherit from custom vendor
$(call inherit-product-if-exist, vendor/MiuiCamera/config.mk)

# Inherit some common ColtOS stuff.
$(call inherit-product, vendor/colt/config/common_full_phone.mk)

COLT_BUILD_MAINTAINER := SRAVAN(MR_CandY)


PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := whyred
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := colt_whyred
PRODUCT_MODEL := Redmi Note 5
PRODUCT_PLATFORM := SDM660

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="whyred" \
    PRODUCT_NAME="whyred" \
    PRIVATE_BUILD_DESC="redfin-user 11 RQ3A.210805.001.A1 7474174 release-keys"

BUILD_FINGERPRINT := google/redfin/redfin:11/RQ3A.210905.001/7511028:user/release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=google/redfin/redfin:11/RQ3A.210905.001.A1/7511028:user/release-keys

TARGET_VENDOR := Xiaomi
IS_PHONE := true
TARGET_BOOT_ANIMATION_RES := 1080x2160
TARGET_SCREEN_DENSITY := 440
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_FACE_UNLOCK_SUPPORTED = true

