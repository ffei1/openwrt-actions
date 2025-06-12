#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

echo "开始 DIY2 配置……"
echo "========================="
# Modify default IP
sed -i 's/192.168.1.1/192.168.11.1/g' package/base-files/files/bin/config_generate
# 删除软件包
rm target/linux/rockchip/image/armv8.mk
rm target/linux/rockchip/armv8/base-files/etc/board.d/02_network
rm target/linux/rockchip/armv8/base-files/etc/hotplug.d/net/40-net-smp-affinity
rm package/boot/uboot-rockchip/Makefile
rm package/boot/uboot-rockchip/patches/900-arm-add-dts-files.patch
rm target/linux/rockchip/patches-6.6/900-arm64-boot-add-dts-files.patch
wget -P target/linux/rockchip/image https://raw.githubusercontent.com/ffei1/openwrt-actions/main/33/armv8.mk
wget -P target/linux/rockchip/armv8/base-files/etc/board.d https://raw.githubusercontent.com/ffei1/openwrt-actions/main/33/02_network
wget -P target/linux/rockchip/armv8/base-files/etc/hotplug.d/net https://raw.githubusercontent.com/ffei1/openwrt-actions/main/33/40-net-smp-affinity
wget -P package/boot/uboot-rockchip https://raw.githubusercontent.com/ffei1/openwrt-actions/main/33/Makefile
wget -P package/boot/uboot-rockchip/patches https://raw.githubusercontent.com/ffei1/openwrt-actions/main/33/900-arm-add-dts-files.patch
wget -P target/linux/rockchip/patches-6.6 https://raw.githubusercontent.com/ffei1/openwrt-actions/main/33/900-arm64-boot-add-dts-files.patch
wget -P package/boot/uboot-rockchip/src/arch/arm/dts https://raw.githubusercontent.com/ffei1/openwrt-actions/main/uboot/rk3399-fine-3399.dts
wget -P package/boot/uboot-rockchip/src/arch/arm/dts https://raw.githubusercontent.com/ffei1/openwrt-actions/main/33/rk3399-fine-3399-u-boot.dtsi
wget -P package/boot/uboot-rockchip/src/configs https://raw.githubusercontent.com/ffei1/openwrt-actions/main/33/fine-3399-rk3399_defconfig
wget -P target/linux/rockchip/files/arch/arm64/boot/dts/rockchip https://raw.githubusercontent.com/ffei1/openwrt-actions/main/33/rk3399-fine-3399.dts
wget -P package/boot/uboot-rockchip/src/arch/arm/dts https://raw.githubusercontent.com/ffei1/openwrt-actions/main/uboot/rk3588-lubancat-5.dts
wget -P package/boot/uboot-rockchip/src/arch/arm/dts https://raw.githubusercontent.com/ffei1/openwrt-actions/main/33/rk3588-lubancat-5-u-boot.dtsi
wget -P package/boot/uboot-rockchip/src/configs https://raw.githubusercontent.com/ffei1/openwrt-actions/main/33/lubancat-5-rk3588_defconfig
wget -P target/linux/rockchip/files/arch/arm64/boot/dts/rockchip https://raw.githubusercontent.com/ffei1/openwrt-actions/main/33/rk3588-lubancat-5.dts
