# Specify phone tech before including full_phone
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from device
$(call inherit-product, device/yu/garlic/device.mk)

# Encryption
PRODUCT_PACKAGES += \
    libcryptfs_hw

# Crypto
PRODUCT_PACKAGES += \
    qcom_decrypt

# Timezone Data
PRODUCT_PACKAGES += \
    tzdata_twrp

# Build led code
PRODUCT_PACKAGES += \
    leds

BOARD_VENDOR := yu
PRODUCT_DEVICE := garlic
PRODUCT_NAME := twrp_garlic
PRODUCT_BRAND := yu
PRODUCT_MODEL := YU Yureka Black
PRODUCT_MANUFACTURER := yu

PRODUCT_GMS_CLIENTID_BASE := android-yu
