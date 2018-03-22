#!/bin/bash
#操作系统为centos7.4
#作者：任小为

yum install bind bind-utils bind-libs bind-chroot -y
mkdir /var/named/chroot/var/named/data
mkdir /var/named/chroot/var/named/dynamic
touch /var/named/chroot/var/named/data/cache_dump.db
touch /var/named/chroot/var/named/data/named_stats.txt
touch /var/named/chroot/var/named/data/named_mem_stats.txt
touch /var/named/chroot/var/named/data/named.run
touch /var/named/chroot/var/named/dynamic/managed-keys.bind
chown named.named -R /var/named/*
/usr/libexec/setup-named-chroot.sh /var/named/chroot on
systemctl stop named
systemctl disable named
systemctl start named-chroot
systemctl enable named-chroot
ln -s '/usr/lib/systemd/system/named-chroot.service' '/etc/systemd/system/multi-user.target.wants/named-chroot.service'
