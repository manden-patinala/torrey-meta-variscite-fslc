SRC_URI += "file://defconfig \
    file://0004-enable-communication-between-som-and-mcu-display-adc-support.patch \
    file://0003-device-driver-configuration-for-touch.patch \
    file://0002-real-time-clock-support.patch \
    file://0001-resistive-display-configuration-support.patch \
    file://logo_linux_clut224.ppm \
	"

KBUILD_DEFCONFIG_var-som-mx6 = ""

do_configure() {
    # logo support, if you supply logo_linux_clut224.ppm in SRC_URI, then it's going to be used
    if [ -e ${WORKDIR}/logo_linux_clut224.ppm ]; then
        install -m 0644 ${WORKDIR}/logo_linux_clut224.ppm ${S}/drivers/video/logo/logo_linux_clut224.ppm
        kernel_conf_variable LOGO y
        kernel_conf_variable LOGO_LINUX_CLUT224 y
        kernel_conf_variable LOGO_VARISCITE_CLUT224 n
    fi
}


