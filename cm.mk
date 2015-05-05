# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)
$(call inherit-product, vendor/cm/config/telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/lge/vk810/vk810.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := vk810
PRODUCT_NAME := cm_vk810
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-VK810
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
  PRODUCT_NAME=altev_vzw \
  BUILD_FINGERPRINT=lge/altev_vzw/altev:4.4.2/KOT49I.VK81023A/.1416370232:user/release-keys
  PRIVATE_BUILD_DESC="altev_vzw-user 4.4.2 KOT49I.VK81023A .1416370232 release-keys"
