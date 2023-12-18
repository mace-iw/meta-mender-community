run mender_setup;
setenv bootargs root=${mender_kernel_root} ${bootargs};
if test "${fdt_addr_r}" != ""; then
    load ${mender_uboot_root} ${fdt_addr_r} /boot/${mender_dtb_name};
fi;
load ${mender_uboot_root} ${kernel_addr_r} /boot/${mender_kernel_name};
${mender_boot_kernel_type} ${kernel_addr_r} - ${fdt_addr_r};
run mender_try_to_recover
