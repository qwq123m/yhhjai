#继承通用AOSP配置
$(调用inherit-product，$(SRC_TARGET_DIR)/product/base.mk)
$(调用inherit-product，$(SRC_TARGET_DIR)/product/core_64_bit_only。马克)

#继承TWRP产品配置
$(调用inherit-product，vendor/twrp/config/common.mk)

#设备特定配置
$(调用inherit-product，device/vivo/PD2049/device.mk)

#设备标识符
product_DEVICE：=PD2049
product_NAME：=twrp_PD2049
product_BRAND：=vivo
product_MODEL：=22041211AC
product_MANUFACTURER：=vivo
