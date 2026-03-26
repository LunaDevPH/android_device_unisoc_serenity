# Inherit from those product configuration files.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from TWRP (Updated for 12.1 Minimal)
$(call inherit-product, vendor/twrp/config/common.mk)

PRODUCT_DEVICE := serenity
PRODUCT_NAME := omni_serenity
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi A5
PRODUCT_MANUFACTURER := xiaomi

# Fingerprint (Optional but helpful for MTP)
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
