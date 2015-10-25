include vendor/render/configs/common.mk

PRODUCT_NAME := render_grouper
PRODUCT_DEFCONFIG := tegra3_android_defconfig
PRODUCT_KERNEL_SOURCE := kernel/asus/grouper
CROSS_COMPILE := $(ANDROID_BUILD_TOP)/toolchains/arm-eabi-5.2/bin/arm-eabi-
ARCH := arm
ZIMAGE := arch/arm/boot/zImage
ZIP_FILES_DIR := device/asus/grouper/zip_files

#Override with my custom versioning -Snuzzo was here
EXTRAVERSION := -Plain-Kernels-$(BUILD_VERSION)-Lawlly

KBUILD_BUILD_USER := Snuzzo
KBUILD_BUILD_HOST := RenderServer.net
