#!/bin/sh

make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- -j16 INSTALL_MOD_PATH=out dtbs
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- -j16 INSTALL_MOD_PATH=out modules
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- -j16 INSTALL_MOD_PATH=out modules_install

cp arch/arm/boot/dts/sun8i-v3s-blueberrypi.dtb out/sun8i-v3s-blueberrypi.dtb
cp arch/arm/boot/zImage out/zImage
