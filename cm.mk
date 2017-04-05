# Resolution values for bootanimation
TARGET_SCREEN_HEIGHT := 1024
TARGET_SCREEN_WIDTH := 768

# Release name
PRODUCT_RELEASE_NAME := nanopi3

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/friendly-arm/nanopi3/full_nanopi3.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := nanopi3
PRODUCT_NAME := cm_nanopi3
PRODUCT_BRAND := friendly-arm
PRODUCT_MODEL := nanopi3
PRODUCT_MANUFACTURER := friedly-arm
