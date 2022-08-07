#!/bin/sh

# shadowsocks script for AM380 merlin firmware
# by sadog (sadoneli@gmail.com) from koolshare.cn

rm -rf /tmp/shadowsocks*

echo "开始打包..."
echo "请等待一会儿..."

cd /tmp
mkdir shadowsocks
mkdir shadowsocks/bin
mkdir shadowsocks/scripts
mkdir shadowsocks/webs
mkdir shadowsocks/res

TARGET_FOLDER=/tmp/shadowsocks
TARGET_BIN="base64_encode cdns chinadns  chinadns1 chinadns-ng client_linux_arm5 dns2socks dnsmasq haproxy haveged httping https_dns_proxy jq koolbox koolgame pdu resolveip rss-local rss-redir smartdns speederv1 speederv2 ss-local ss-redir ss-tunnel trojan-go udp2raw v2ray v2ray-plugin obfs-local xray"
cp /koolshare/scripts/ss_install.sh $TARGET_FOLDER/install.sh
cp /koolshare/scripts/uninstall_shadowsocks.sh $TARGET_FOLDER/uninstall.sh
cp /koolshare/scripts/ss_* $TARGET_FOLDER/scripts/
cd /koolshare/bin && cp $TARGET_BIN $TARGET_FOLDER/bin/ && cd /tmp
cp /koolshare/webs/Main_Ss_Content.asp $TARGET_FOLDER/webs/
cp /koolshare/webs/Main_Ss_LoadBlance.asp $TARGET_FOLDER/webs/
cp /koolshare/webs/Main_SsLocal_Content.asp $TARGET_FOLDER/webs/
cp /koolshare/res/icon-shadowsocks.png $TARGET_FOLDER/res/
cp /koolshare/res/ss-menu.js $TARGET_FOLDER/res/
cp /koolshare/res/all.png $TARGET_FOLDER/res/
cp /koolshare/res/gfw.png $TARGET_FOLDER/res/
cp /koolshare/res/chn.png $TARGET_FOLDER/res/
cp /koolshare/res/game.png $TARGET_FOLDER/res/
cp /koolshare/res/gameV2.png $TARGET_FOLDER/res/
cp /koolshare/res/shadowsocks.css $TARGET_FOLDER/res/
cp /koolshare/res/ss_proc_status.htm $TARGET_FOLDER/res/
cp /koolshare/res/ss_udp_status.htm $TARGET_FOLDER/res/
cp -rf /koolshare/res/layer $TARGET_FOLDER/res/
cp -r /koolshare/ss $TARGET_FOLDER/
rm -rf $TARGET_FOLDER/ss/*.json

tar -czv -f /tmp/shadowsocks.tar.gz shadowsocks/
rm -rf $TARGET_FOLDER
echo "打包完毕！"