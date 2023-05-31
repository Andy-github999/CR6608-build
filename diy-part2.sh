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

# Modify default IP
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# Modify default WiFi
#sed -i 's/disabled=1/disabled=0/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

# Modify cpu frequency
#sed -i 's/110,89/110,93/g' target/linux/ramips/patches-5.10/322-mt7621-fix-cpu-clk-add-clkdev.patch
#sed -i 's/u32 xtal_clk, cpu_clk, bus_clk;/u32 xtal_clk, cpu_clk, bus_clk, i;/g' target/linux/ramips/patches-5.10/322-mt7621-fix-cpu-clk-add-clkdev.patch
#sed -i "/+		pll = rt_memc_r32(MEMC_REG_CPU_PLL);/a+		pll &= ~(0x7ff);\n+		pll |= (0x362);\n+		rt_memc_w32(pll,MEMC_REG_CPU_PLL);\n+		for(i=0;i<1024;i++);" target/linux/ramips/patches-5.10/322-mt7621-fix-cpu-clk-add-clkdev.patch
