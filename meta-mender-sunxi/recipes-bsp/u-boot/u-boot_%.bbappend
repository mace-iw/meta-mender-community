FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

MENDER_UBOOT_AUTO_CONFIGURE = "0"

BOOTENV_SIZE ?= "0x20000"

SRC_URI:append = "\
    file://0001-configs-sunxi-add-Mender-required-options.patch \
    file://0002-env-Kconfig-remove-defaults-for-SUNXI.patch \
    file://0003-sunxi-common-Use-for-arm64-same-path-as-for-arm.patch \
    file://0004-configs-orangepi-zero3-defconfig-env-size.patch \
"
