add_wls_rootfs_additions() {
	
	cp -r /home/development/Documents/08_Release/wls-os-rootfs-additions/* ${IMAGE_ROOTFS}/	
	
}

ROOTFS_POSTPROCESS_COMMAND += "add_wls_rootfs_additions;"
