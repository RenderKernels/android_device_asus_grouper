KERNEL_BUILD_SCRIPT := device/asus/nexus7/makekernel.sh
PRODUCT_NAME := render_nexus7
PRODUCT_DEFCONFIG := tegra3_android_defconfig
PRODUCT_KERNEL_SOURCE := kernel/asus/nexus7
CROSS_COMPILE := $(ANDROID_BUILD_TOP)/toolchains/arm-eabi-5.1/bin/arm-eabi-
ARCH := arm

.PHONY: kernel
kernel: nothing
	$(hide) $(KERNEL_BUILD_SCRIPT) \
			$(PRODUCT_DEFCONFIG) \
			ARCH=$(ARCH) \
			CROSS_COMPILE=$(CROSS_COMPILE) \
			$(PRODUCT_KERNEL_SOURCE)
			
.PHONY: kernelclean
kernelclean: nothing
	$(shell cd $(PRODUCT_KERNEL_SOURCE) && make mrproper)

.PHONY: kernelclobber
kernelclobber: kernelclean
	$(shell rm -rf $OUT_DIR/*)
