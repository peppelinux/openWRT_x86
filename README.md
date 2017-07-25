
OpenWRT generic x86
===================

Download sorgenti
````
git clone -b chaos_calmer https://github.com/openwrt/openwrt.git
cd source
````

Installazione software
````bash
./scripts/feeds update
./scripts/feeds install openvpn netdiscover etherwake tcpdump-mini iperf iptraf-ng arp-scan luci-app-commands luci luci-ssl-openssl luci-ssl
./scripts/feeds install bird4 luci-app-bird4 babeld
./scripts/feeds install micropython sshfs nano socat luci-app-mwan3 luci-proto-vpnc luci-proto-openconnect strongswan-full
./scripts/feeds install p910nd luci-app-p910nd luci-app-qos htop
````

Configurazione sorgenti
````bash
make menuconfig
make defconfig
cat my_x86_diffconfig > .config
````

Compilazione
```
make V=99 -j 5
````

convert img to vdi to run it in Vbox
````
VBoxManage convertdd  openwrt-15.05.1-x86-generic-combined-ext4.img openwrt-15.05.1-x86-generic-combined-ext4.vdi
````

Packages
````
arptables_0.0.4-1_x86.ipk
base-files_157.2-r49389_x86.ipk
busybox_1.23.2-1_x86.ipk
chat_2.4.7-6_x86.ipk
comgt_0.32-25_x86.ipk
dnsmasq_2.73-1_x86.ipk
dropbear_2015.67-1_x86.ipk
ebtables_2.0.10-4-3_x86.ipk
ebtables-utils_2.0.10-4-3_x86.ipk
firewall_2015-07-27_x86.ipk
fstools_2016-01-10-96415afecef35766332067f4205ef3b2c7561d21_x86.ipk
fuse-utils_2.9.3-2_x86.ipk
ip_4.0.0-1_x86.ipk
ip6tables_1.4.21-1_x86.ipk
iperf3_3.0.11-1_x86.ipk
ipset_6.24-1_x86.ipk
iptables_1.4.21-1_x86.ipk
iptables-mod-conntrack-extra_1.4.21-1_x86.ipk
iptables-mod-ipopt_1.4.21-1_x86.ipk
iptables-mod-ipsec_1.4.21-1_x86.ipk
iputils-arping_20101006-1_x86.ipk
jshn_2015-11-08-10429bccd0dc5d204635e110a7a8fae7b80d16cb_x86.ipk
jsonfilter_2014-06-19-cdc760c58077f44fc40adbbe41e1556a67c1b9a9_x86.ipk
kernel_3.18.45-1-94bf2124c9ef285cd0dfa6971eeef319_x86.ipk
kmod-3c59x_3.18.45-1_x86.ipk
kmod-8139too_3.18.45-1_x86.ipk
kmod-arptables_3.18.45-1_x86.ipk
kmod-atm_3.18.45-1_x86.ipk
kmod-bonding_3.18.45-1_x86.ipk
kmod-bridge_3.18.45-1_x86.ipk
kmod-crypto-aead_3.18.45-1_x86.ipk
kmod-crypto-arc4_3.18.45-1_x86.ipk
kmod-crypto-authenc_3.18.45-1_x86.ipk
kmod-crypto-cbc_3.18.45-1_x86.ipk
kmod-crypto-core_3.18.45-1_x86.ipk
kmod-crypto-crc32c_3.18.45-1_x86.ipk
kmod-crypto-deflate_3.18.45-1_x86.ipk
kmod-crypto-des_3.18.45-1_x86.ipk
kmod-crypto-ecb_3.18.45-1_x86.ipk
kmod-crypto-hash_3.18.45-1_x86.ipk
kmod-crypto-hmac_3.18.45-1_x86.ipk
kmod-crypto-iv_3.18.45-1_x86.ipk
kmod-crypto-manager_3.18.45-1_x86.ipk
kmod-crypto-md4_3.18.45-1_x86.ipk
kmod-crypto-md5_3.18.45-1_x86.ipk
kmod-crypto-null_3.18.45-1_x86.ipk
kmod-crypto-pcompress_3.18.45-1_x86.ipk
kmod-crypto-rng_3.18.45-1_x86.ipk
kmod-crypto-sha1_3.18.45-1_x86.ipk
kmod-crypto-sha256_3.18.45-1_x86.ipk
kmod-crypto-wq_3.18.45-1_x86.ipk
kmod-dm_3.18.45-1_x86.ipk
kmod-dnsresolver_3.18.45-1_x86.ipk
kmod-e1000_3.18.45-1_x86.ipk
kmod-e100_3.18.45-1_x86.ipk
kmod-ebtables_3.18.45-1_x86.ipk
kmod-ebtables-ipv4_3.18.45-1_x86.ipk
kmod-ebtables-ipv6_3.18.45-1_x86.ipk
kmod-ebtables-watchers_3.18.45-1_x86.ipk
kmod-fs-cifs_3.18.45-1_x86.ipk
kmod-fs-exportfs_3.18.45-1_x86.ipk
kmod-fs-ext4_3.18.45-1_x86.ipk
kmod-fs-msdos_3.18.45-1_x86.ipk
kmod-fs-nfs_3.18.45-1_x86.ipk
kmod-fs-nfs-common_3.18.45-1_x86.ipk
kmod-fs-nfsd_3.18.45-1_x86.ipk
kmod-fs-ntfs_3.18.45-1_x86.ipk
kmod-fs-vfat_3.18.45-1_x86.ipk
kmod-fuse_3.18.45-1_x86.ipk
kmod-gre_3.18.45-1_x86.ipk
kmod-hid_3.18.45-1_x86.ipk
kmod-hid-generic_3.18.45-1_x86.ipk
kmod-hwmon-core_3.18.45-1_x86.ipk
kmod-ifb_3.18.45-1_x86.ipk
kmod-input-core_3.18.45-1_x86.ipk
kmod-input-evdev_3.18.45-1_x86.ipk
kmod-ip6tables_3.18.45-1_x86.ipk
kmod-ipsec_3.18.45-1_x86.ipk
kmod-ipsec4_3.18.45-1_x86.ipk
kmod-ipsec6_3.18.45-1_x86.ipk
kmod-ipt-account_3.18.45+2.5-1_x86.ipk
kmod-ipt-cluster_3.18.45-1_x86.ipk
kmod-ipt-clusterip_3.18.45-1_x86.ipk
kmod-ipt-compat-xtables_3.18.45+2.5-1_x86.ipk
kmod-ipt-condition_3.18.45+2.5-1_x86.ipk
kmod-ipt-conntrack_3.18.45-1_x86.ipk
kmod-ipt-conntrack-extra_3.18.45-1_x86.ipk
kmod-ipt-core_3.18.45-1_x86.ipk
kmod-ipt-delude_3.18.45+2.5-1_x86.ipk
kmod-ipt-dhcpmac_3.18.45+2.5-1_x86.ipk
kmod-ipt-dnetmap_3.18.45+2.5-1_x86.ipk
kmod-ipt-extra_3.18.45-1_x86.ipk
kmod-ipt-filter_3.18.45-1_x86.ipk
kmod-ipt-fuzzy_3.18.45+2.5-1_x86.ipk
kmod-ipt-hashlimit_3.18.45-1_x86.ipk
kmod-ipt-iface_3.18.45+2.5-1_x86.ipk
kmod-ipt-ipopt_3.18.45-1_x86.ipk
kmod-ipt-iprange_3.18.45-1_x86.ipk
kmod-ipt-ipsec_3.18.45-1_x86.ipk
kmod-ipt-ipset_3.18.45-1_x86.ipk
kmod-ipt-lscan_3.18.45+2.5-1_x86.ipk
kmod-ipt-nat_3.18.45-1_x86.ipk
kmod-ipt-nat6_3.18.45-1_x86.ipk
kmod-ipt-nat-extra_3.18.45-1_x86.ipk
kmod-ipt-nathelper-rtsp_3.18.45+2.5-1_x86.ipk
kmod-ipt-nflog_3.18.45-1_x86.ipk
kmod-ipt-nfqueue_3.18.45-1_x86.ipk
kmod-ipt-psd_3.18.45+2.5-1_x86.ipk
kmod-ipt-quota2_3.18.45+2.5-1_x86.ipk
kmod-ipt-sysrq_3.18.45+2.5-1_x86.ipk
kmod-ipt-tarpit_3.18.45+2.5-1_x86.ipk
kmod-ipt-tee_3.18.45-1_x86.ipk
kmod-ipt-tproxy_3.18.45-1_x86.ipk
kmod-ipt-u32_3.18.45-1_x86.ipk
kmod-ipt-ulog_3.18.45-1_x86.ipk
kmod-iptunnel_3.18.45-1_x86.ipk
kmod-iptunnel4_3.18.45-1_x86.ipk
kmod-iptunnel6_3.18.45-1_x86.ipk
kmod-ipv6_3.18.45-1_x86.ipk
kmod-l2tp_3.18.45-1_x86.ipk
kmod-lib-crc16_3.18.45-1_x86.ipk
kmod-lib-crc32c_3.18.45-1_x86.ipk
kmod-lib-crc-ccitt_3.18.45-1_x86.ipk
kmod-libphy_3.18.45-1_x86.ipk
kmod-lib-textsearch_3.18.45-1_x86.ipk
kmod-lib-zlib_3.18.45-1_x86.ipk
kmod-llc_3.18.45-1_x86.ipk
kmod-loop_3.18.45-1_x86.ipk
kmod-mii_3.18.45-1_x86.ipk
kmod-mppe_3.18.45-1_x86.ipk
kmod-natsemi_3.18.45-1_x86.ipk
kmod-ne2k-pci_3.18.45-1_x86.ipk
kmod-nf-conntrack_3.18.45-1_x86.ipk
kmod-nf-conntrack6_3.18.45-1_x86.ipk
kmod-nf-conntrack-netlink_3.18.45-1_x86.ipk
kmod-nf-ipt_3.18.45-1_x86.ipk
kmod-nf-ipt6_3.18.45-1_x86.ipk
kmod-nf-nat_3.18.45-1_x86.ipk
kmod-nf-nat6_3.18.45-1_x86.ipk
kmod-nf-nathelper_3.18.45-1_x86.ipk
kmod-nfnetlink_3.18.45-1_x86.ipk
kmod-nfnetlink-log_3.18.45-1_x86.ipk
kmod-nfnetlink-queue_3.18.45-1_x86.ipk
kmod-nft-core_3.18.45-1_x86.ipk
kmod-nft-nat_3.18.45-1_x86.ipk
kmod-nls-base_3.18.45-1_x86.ipk
kmod-nls-cp437_3.18.45-1_x86.ipk
kmod-nls-iso8859-1_3.18.45-1_x86.ipk
kmod-nls-utf8_3.18.45-1_x86.ipk
kmod-pcnet32_3.18.45-1_x86.ipk
kmod-ppp_3.18.45-1_x86.ipk
kmod-pppoa_3.18.45-1_x86.ipk
kmod-pppoe_3.18.45-1_x86.ipk
kmod-pppol2tp_3.18.45-1_x86.ipk
kmod-pppox_3.18.45-1_x86.ipk
kmod-pps_3.18.45-1_x86.ipk
kmod-pptp_3.18.45-1_x86.ipk
kmod-ptp_3.18.45-1_x86.ipk
kmod-r8169_3.18.45-1_x86.ipk
kmod-sched_3.18.45-1_x86.ipk
kmod-sched-connmark_3.18.45-1_x86.ipk
kmod-sched-core_3.18.45-1_x86.ipk
kmod-scsi-core_3.18.45-1_x86.ipk
kmod-sctp_3.18.45-1_x86.ipk
kmod-sis900_3.18.45-1_x86.ipk
kmod-slhc_3.18.45-1_x86.ipk
kmod-stp_3.18.45-1_x86.ipk
kmod-tg3_3.18.45-1_x86.ipk
kmod-trelay_3.18.45+0.1-1_x86.ipk
kmod-tun_3.18.45-1_x86.ipk
kmod-udptunnel4_3.18.45-1_x86.ipk
kmod-udptunnel6_3.18.45-1_x86.ipk
kmod-usb2_3.18.45-1_x86.ipk
kmod-usb2-pci_3.18.45-1_x86.ipk
kmod-usb-core_3.18.45-1_x86.ipk
kmod-usb-hid_3.18.45-1_x86.ipk
kmod-usbip_3.18.45-1_x86.ipk
kmod-usbip-client_3.18.45-1_x86.ipk
kmod-usbip-server_3.18.45-1_x86.ipk
kmod-usb-net_3.18.45-1_x86.ipk
kmod-usb-net-asix_3.18.45-1_x86.ipk
kmod-usb-net-asix-ax88179_3.18.45-1_x86.ipk
kmod-usb-net-cdc-eem_3.18.45-1_x86.ipk
kmod-usb-net-cdc-ether_3.18.45-1_x86.ipk
kmod-usb-net-cdc-mbim_3.18.45-1_x86.ipk
kmod-usb-net-cdc-ncm_3.18.45-1_x86.ipk
kmod-usb-net-cdc-subset_3.18.45-1_x86.ipk
kmod-usb-net-dm9601-ether_3.18.45-1_x86.ipk
kmod-usb-net-hso_3.18.45-1_x86.ipk
kmod-usb-net-huawei-cdc-ncm_3.18.45-1_x86.ipk
kmod-usb-net-ipheth_3.18.45-1_x86.ipk
kmod-usb-net-kalmia_3.18.45-1_x86.ipk
kmod-usb-net-kaweth_3.18.45-1_x86.ipk
kmod-usb-net-mcs7830_3.18.45-1_x86.ipk
kmod-usb-net-pegasus_3.18.45-1_x86.ipk
kmod-usb-net-qmi-wwan_3.18.45-1_x86.ipk
kmod-usb-net-rndis_3.18.45-1_x86.ipk
kmod-usb-net-rtl8150_3.18.45-1_x86.ipk
kmod-usb-net-rtl8152_3.18.45-1_x86.ipk
kmod-usb-net-sierrawireless_3.18.45-1_x86.ipk
kmod-usb-net-smsc95xx_3.18.45-1_x86.ipk
kmod-usb-ohci_3.18.45-1_x86.ipk
kmod-usb-ohci-pci_3.18.45-1_x86.ipk
kmod-usb-printer_3.18.45-1_x86.ipk
kmod-usb-serial_3.18.45-1_x86.ipk
kmod-usb-serial-sierrawireless_3.18.45-1_x86.ipk
kmod-usb-storage_3.18.45-1_x86.ipk
kmod-usb-storage-extras_3.18.45-1_x86.ipk
kmod-usb-uhci_3.18.45-1_x86.ipk
kmod-usb-wdm_3.18.45-1_x86.ipk
kmod-via-rhine_3.18.45-1_x86.ipk
kmod-via-velocity_3.18.45-1_x86.ipk
libblobmsg-json_2015-11-08-10429bccd0dc5d204635e110a7a8fae7b80d16cb_x86.ipk
libc_0.9.33.2-1_x86.ipk
libfuse_2.9.3-2_x86.ipk
libgcc_4.8-linaro-1_x86.ipk
libgmp_6.0.0-1_x86.ipk
libip4tc_1.4.21-1_x86.ipk
libip6tc_1.4.21-1_x86.ipk
libiwinfo_2015-06-01-ade8b1b299cbd5748db1acf80dd3e9f567938371_x86.ipk
libiwinfo-lua_2015-06-01-ade8b1b299cbd5748db1acf80dd3e9f567938371_x86.ipk
libjson-c_0.12-1_x86.ipk
libjson-script_2015-11-08-10429bccd0dc5d204635e110a7a8fae7b80d16cb_x86.ipk
liblua_5.1.5-1_x86.ipk
liblzo_2.08-1_x86.ipk
libmnl_1.0.3-2_x86.ipk
libncurses_5.9-2_x86.ipk
libnetfilter-conntrack_1.0.4-1_x86.ipk
libnetfilter-cthelper_1.0.0-1_x86.ipk
libnetfilter-cttimeout_1.0.0-1_x86.ipk
libnetfilter-queue_1.0.2-1_x86.ipk
libnettle_3.1.1-1_x86.ipk
libnfnetlink_1.0.1-1_x86.ipk
libnl-tiny_0.1-4_x86.ipk
libopenssl_1.0.2j-1_x86.ipk
libpcap_1.5.3-1_x86.ipk
libpthread_0.9.33.2-1_x86.ipk
libreadline_6.3-1_x86.ipk
librpc_2015-04-10-308e9964bfb623773dc0dcc99ef9d18d1551d6ae_x86.ipk
librt_0.9.33.2-1_x86.ipk
libsysfs_2.1.0-2_x86.ipk
libubox_2015-11-08-10429bccd0dc5d204635e110a7a8fae7b80d16cb_x86.ipk
libubus_2015-05-25-f361bfa5fcb2daadf3b160583ce665024f8d108e_x86.ipk
libubus-lua_2015-05-25-f361bfa5fcb2daadf3b160583ce665024f8d108e_x86.ipk
libuci_2015-08-27.1-1_x86.ipk
libuci-lua_2015-08-27.1-1_x86.ipk
libustream-openssl_2015-07-09-c2d73c22618e8ee444e8d346695eca908ecb72d3_x86.ipk
libxtables_1.4.21-1_x86.ipk
linux-atm_2.5.2-5_x86.ipk
logd_2015-11-22-c086167a0154745c677f8730a336ea9cf7d71031_x86.ipk
lua_5.1.5-1_x86.ipk
mtd_21_x86.ipk
netifd_2015-12-16-245527193e90906451be35c2b8e972b8712ea6ab_x86.ipk
odhcp6c_2016-02-08-dc186d6d2b0dd4ad23ca5fc69c00e81f796ff6d9_x86.ipk
odhcpd_2016-10-09-801cfeea100ca7b211c9841f0fcb757b17f47860_x86.ipk
openssl-util_1.0.2j-1_x86.ipk
openvpn-easy-rsa_2013-01-30-2_x86.ipk
openvpn-openssl_2.3.6-5_x86.ipk
opkg_9c97d5ecd795709c8584e972bfdf3aee3a5b846d-9_x86.ipk
ppp_2.4.7-6_x86.ipk
pppdump_2.4.7-6_x86.ipk
ppp-mod-pppoa_2.4.7-6_x86.ipk
ppp-mod-pppoe_2.4.7-6_x86.ipk
ppp-mod-pppol2tp_2.4.7-6_x86.ipk
ppp-mod-pptp_2.4.7-6_x86.ipk
ppp-mod-radius_2.4.7-6_x86.ipk
pppstats_2.4.7-6_x86.ipk
procd_2015-10-29.1-d5fddd91b966424bb63e943e789704d52382cc18_x86.ipk
qos-scripts_1.2.1-7_all.ipk
r8169-firmware_2016-01-25-52442afee9907bc32a058f22bb3295d040677c26-1_x86.ipk
resolveip_2_x86.ipk
rpcd_2016-06-30-23417e94d25570e6d62542bac46edd51e8e0243a_x86.ipk
ss_4.0.0-1_x86.ipk
tc_4.0.0-1_x86.ipk
tcpdump-mini_4.5.1-4_x86.ipk
terminfo_5.9-2_x86.ipk
ubox_2015-11-22-c086167a0154745c677f8730a336ea9cf7d71031_x86.ipk
ubus_2015-05-25-f361bfa5fcb2daadf3b160583ce665024f8d108e_x86.ipk
ubusd_2015-05-25-f361bfa5fcb2daadf3b160583ce665024f8d108e_x86.ipk
uci_2015-08-27.1-1_x86.ipk
uclibcxx_0.2.4-1_x86.ipk
uhttpd_2015-11-08-fe01ef3f52adae9da38ef47926cd50974af5d6b7_x86.ipk
uhttpd-mod-ubus_2015-11-08-fe01ef3f52adae9da38ef47926cd50974af5d6b7_x86.ipk
usign_2015-05-08-cf8dcdb8a4e874c77f3e9a8e9b643e8c17b19131_x86.ipk
wwan_2014-07-17-1_x86.ipk
zlib_1.2.8-1_x86.ipk
luci-app-commands_git-17.136.58961-13aa5ff-1_all.ipk
luci-app-firewall_git-17.136.58961-13aa5ff-1_all.ipk
luci-app-p910nd_git-17.136.58961-13aa5ff-1_all.ipk
luci-base_git-17.136.58961-13aa5ff-1_x86.ipk
luci_git-17.136.58961-13aa5ff-1_all.ipk
luci-lib-ip_git-17.136.58961-13aa5ff-1_x86.ipk
luci-lib-nixio_git-17.136.58961-13aa5ff-1_x86.ipk
luci-mod-admin-full_git-17.136.58961-13aa5ff-1_x86.ipk
luci-proto-ipv6_git-17.136.58961-13aa5ff-1_all.ipk
luci-proto-openconnect_git-17.136.58961-13aa5ff-1_all.ipk
luci-proto-ppp_git-17.136.58961-13aa5ff-1_all.ipk
luci-theme-bootstrap_git-17.136.58961-13aa5ff-1_all.ipk
etherwake_1.09-3_x86.ipk
glib2_2.43.4-1_x86.ipk
libattr_20150220-1_x86.ipk
libffi_3.0.13-1_x86.ipk
libgcrypt_1.6.1-1_x86.ipk
libgnutls_3.4.15-1_x86.ipk
libgpg-error_1.12-1_x86.ipk
libxml2_2.9.2-3_x86.ipk
luci-app-mwan3_1.4-3_all.ipk
micropython_1.4.5-20150827-936e25b164d837fc91e4bafd76580e747b235dff-1_x86.ipk
mwan3_1.6-2_all.ipk
nano_2.5.3-1_x86.ipk
openconnect_7.06-5_x86.ipk
p910nd_0.97-4_x86.ipk
socat_1.7.3.0-1_x86.ipk
sshfs_2.5-1_x86.ipk
strongswan_5.3.3-1_x86.ipk
strongswan-charon_5.3.3-1_x86.ipk
strongswan-default_5.3.3-1_x86.ipk
strongswan-mod-aes_5.3.3-1_x86.ipk
strongswan-mod-attr_5.3.3-1_x86.ipk
strongswan-mod-constraints_5.3.3-1_x86.ipk
strongswan-mod-des_5.3.3-1_x86.ipk
strongswan-mod-dnskey_5.3.3-1_x86.ipk
strongswan-mod-eap-md5_5.3.3-1_x86.ipk
strongswan-mod-eap-mschapv2_5.3.3-1_x86.ipk
strongswan-mod-eap-radius_5.3.3-1_x86.ipk
strongswan-mod-fips-prf_5.3.3-1_x86.ipk
strongswan-mod-gmp_5.3.3-1_x86.ipk
strongswan-mod-hmac_5.3.3-1_x86.ipk
strongswan-mod-kernel-netlink_5.3.3-1_x86.ipk
strongswan-mod-md4_5.3.3-1_x86.ipk
strongswan-mod-md5_5.3.3-1_x86.ipk
strongswan-mod-nonce_5.3.3-1_x86.ipk
strongswan-mod-openssl_5.3.3-1_x86.ipk
strongswan-mod-pem_5.3.3-1_x86.ipk
strongswan-mod-pgp_5.3.3-1_x86.ipk
strongswan-mod-pkcs1_5.3.3-1_x86.ipk
strongswan-mod-pubkey_5.3.3-1_x86.ipk
strongswan-mod-random_5.3.3-1_x86.ipk
strongswan-mod-rc2_5.3.3-1_x86.ipk
strongswan-mod-resolve_5.3.3-1_x86.ipk
strongswan-mod-revocation_5.3.3-1_x86.ipk
strongswan-mod-sha1_5.3.3-1_x86.ipk
strongswan-mod-sha2_5.3.3-1_x86.ipk
strongswan-mod-socket-default_5.3.3-1_x86.ipk
strongswan-mod-sshkey_5.3.3-1_x86.ipk
strongswan-mod-stroke_5.3.3-1_x86.ipk
strongswan-mod-updown_5.3.3-1_x86.ipk
strongswan-mod-x509_5.3.3-1_x86.ipk
strongswan-mod-xauth-generic_5.3.3-1_x86.ipk
strongswan-mod-xcbc_5.3.3-1_x86.ipk
strongswan-utils_5.3.3-1_x86.ipk
vpnc-scripts_20151220-1_x86.ipk
bird4_1.4.5-2_x86.ipk
bird4-uci_0.2_x86.ipk
birdc4_1.4.5-2_x86.ipk
birdcl4_1.4.5-2_x86.ipk
luci-app-bird4_0.2_x86.ipk
````

