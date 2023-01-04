# Release name
PRODUCT_RELEASE_NAME := a3xelte

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/pb/config/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := a3xelte
PRODUCT_NAME := omni_a3xelte
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
