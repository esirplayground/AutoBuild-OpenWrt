#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
sed -i 's/192.168.1.1/192.168.10.1/g' openwrt/package/base-files/files/bin/config_generate

#2. 修改主机名
sed -i '/uci commit system/i\uci set system.@system[0].hostname='Soft_Routes'' openwrt/package/lean/default-settings/files/zzz-default-settings

#3. 设置密码为空
sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' openwrt/package/lean/default-settings/files/zzz-default-settings

#4. 版本号里显示一个自己的名字
sed -i "s/OpenWrt /Lunseil build $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" openwrt/package/lean/default-settings/files/zzz-default-settings

#5. 修改插件名字
sed -i 's/"Turbo ACC 网络加速"/"网络加速"/g' openwrt/package/lean/luci-app-sfe/po/zh-cn/sfe.po
        
#6. 修改上游DNS
sed -i "2i # network config" openwrt/package/lean/default-settings/files/zzz-default-settings
sed -i "3i uci set network.lan.dns='192.168.10.1'"  openwrt/package/lean/default-settings/files/zzz-default-settings
