#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP 设置编译后本机IP，等同vi /etc/sysconfig/network
echo -e "src-git lienol https://github.com/Lienol/openwrt-package" >> openwrt/feeds.conf.default
sed -i 's/192.168.1.1/10.10.10.6/g' openwrt/package/base-files/files/bin/config_generate
sed -i 's/192.168.$((addr_offset++)).1/10.10.$((addr_offset++)).4/g' openwrt/package/base-files/files/bin/config_generate
#cd openwrt && ./scripts/feeds update -a && ./scripts/feeds install -a
#下载自定义固件，需要配合config文件使用
openwrt/scripts/feeds update luci-lib-json
openwrt/scripts/feeds install luci-lib-json
git clone https://github.com/tty228/luci-app-serverchan.git package/lean/luci-app-serverchan
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome
#git clone https://github.com/lisaac/luci-lib-docker.git package/luci-lib-docker 
# git clone https://github.com/lisaac/luci-app-dockerman.git package/luci-app-dockerman 
#1
