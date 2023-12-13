add_wls_rootfs_additions() {
	
	cp -r /home/development/Documents/08_Release/wls-os-rootfs-additions/* ${IMAGE_ROOTFS}/	
	
}

#systemd_disable_vt() {
#    rm ${IMAGE_ROOTFS}${sysconfdir}/systemd/system/getty.target.wants/getty@tty*.service
#}

#IMAGE_PREPROCESS_COMMAND_append = " ${@ 'systemd_disable_vt;' if bb.utils.contains('DISTRO_FEATURES', 'systemd', True, False, d) and bb.utils.contains('USE_VT', '0', True, False, #d) else ''} "

ROOTFS_POSTPROCESS_COMMAND += "add_wls_rootfs_additions;"
