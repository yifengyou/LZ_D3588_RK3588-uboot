#!/bin/bash

set -ex

# clean
rm -rf output
mkdir -p output

# only spi
rm -f uboot.img arch/arm/dts/rk3588-evb.dtb
sed -i "s#model = .*#model = \"LZ D3588 Compiled By yifengyou v$(date +%Y.%m.%d-%H:%M:%S)\";#" arch/arm/dts/rk3588-evb.dts

./make.sh rk3588

dtc -I dtb -O dts arch/arm/dts/rk3588-evb.dtb -o lz_d3588-uboot.dts
fdtdump u-boot.dtb >u-boot.dts
ls -alh lz_d3588-uboot.dts u-boot.dts

./make.sh loader
ls -alh rk3588_spl*.bin
mv rk3588_spl_loader_v1.21.114.bin output/rk3588_spl_loader_v1.21.114.bin

dd if=uboot.img of=output/uboot.img bs=2M count=1
dumpimage -l output/uboot.img
ls -alh output/uboot.img

# show output
ls -alh output/*
sha256sum output/*
echo "All ok! All done!"
