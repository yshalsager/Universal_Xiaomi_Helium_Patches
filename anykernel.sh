# AnyKernel2 Script
#
# Original and credits: osm0sis @ xda-developers
#
# Modified by yshalsager, 14.08.2017

############### AnyKernel setup start ############### 

# EDIFY properties
do.devicecheck=1
do.initd=0
do.modules=1
do.cleanup=1
device.name1=helium
device.name2=
device.name3=
device.name4=
device.name5=
device.name6=
device.name7=
device.name8=
device.name9=
device.name10=
device.name11=
device.name12=
device.name13=
device.name14=
device.name15=

# shell variables
block=/dev/block/bootdevice/by-name/boot;
add_seandroidenforce=0
supersu_exclusions=""
is_slot_device=0;

############### AnyKernel setup end ############### 

## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. /tmp/anykernel/tools/ak2-core.sh;

# dump current kernel
dump_boot;

############### Ramdisk customization start ###############

# AnyKernel permissions
chmod 775 $ramdisk/sbin
chmod 755 $ramdisk/sbin/busybox

chmod 775 $ramdisk/res
chmod -R 755 $ramdisk/res/bc
chmod -R 755 $ramdisk/res/misc

############### Ramdisk customization end ###############

# write new kernel
write_boot;
