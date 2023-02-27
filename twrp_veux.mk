# Copyright (C) 2013 The Android Open Source Project
# Copyright (C) 2023 The TWRP Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator 
# SPDX-License-Identifier: Apache-2.0

# Device Path
DEVICE_PATH := device/xiaomi/veux

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := veux
PRODUCT_NAME := twrp_$(PRODUCT_DEVICE)
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := $(PRODUCT_BRAND) Note 11 Pro 5G
PRODUCT_PLATFORM := holi
PRODUCT_MANUFACTURER := xiaomi

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit from Custom Recovery common product
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from veux device
$(call inherit-product, device/xiaomi/veux/device.mk)

#Virtual A/B
ENABLE_VIRTUAL_AB := true
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Project ID Quota
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Apex
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)