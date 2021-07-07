#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
sed -i 's/192.168.1.1/10.0.0.100/g' openwrt/package/base-files/files/bin/config_generate
sed -i 's/OpenWrt/ENDLESS/g' package/base-files/files/bin/config_generate
