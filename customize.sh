#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
sed -i 's/192.168.1.1/192.168.6.1/g' openwrt/package/base-files/files/bin/config_generate

#2. Clear the login password
#sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g' openwrt/package/emortal/default-settings/files/99-default-settings

#3. Change the default theme
#rm openwrt/package/lean/luci-theme-argon -rf
sed -i 's/+luci-theme-bootstrap/+luci-theme-argon-dark-mod/g' openwrt/feeds/luci/collections/luci/Makefile
