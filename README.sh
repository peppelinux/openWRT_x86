
git clone -b chaos_calmer https://github.com/openwrt/openwrt.git
cd source

./scripts/feeds update

# se openvpn openssl anche luci openssl, altrimenti mbedtls
./scripts/feeds install openvpn netdiscover etherwake tcpdump-mini iperf iptraf-ng arp-scan luci-app-commands luci luci-ssl-openssl luci-ssl

# routing dinamico
./scripts/feeds install bird4 luci-app-bird4 babeld

# stuffs
./scripts/feeds install micropython sshfs nano socat luci-app-mwan3 luci-proto-vpnc luci-proto-openconnect strongswan-full

# printer server
./scripts/feeds install p910nd luci-app-p910nd

#make menuconfig
cat my_x86_diffconfig > .config
make defconfig

# convert img to vdi to run it in Vbox
VBoxManage convertdd  openwrt-15.05.1-x86-generic-combined-ext4.img openwrt-15.05.1-x86-generic-combined-ext4.vdi



