$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, vendor/twrp/artifacts/otacert.mk)

PRODUCT_DEVICE := serenity
PRODUCT_NAME := omni_serenity
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi A5
PRODUCT_MANUFACTURER := xiaomi
