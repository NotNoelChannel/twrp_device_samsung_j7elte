# Release name
PRODUCT_RELEASE_NAME := j7elte

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/pb/config/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := j7elte
PRODUCT_NAME := omni_j7elte
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
