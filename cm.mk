# Release name
PRODUCT_RELEASE_NAME := zeus

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/wolder/zeus/device_zeus.mk)

# Correct bootanimation size for the screen
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

## Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_zeus
PRODUCT_DEVICE := zeus
PRODUCT_BRAND := Wolder
PRODUCT_MANUFACTURER := Wolder
PRODUCT_MODEL := WIAM #24
