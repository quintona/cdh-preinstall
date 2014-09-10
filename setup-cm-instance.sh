#!/bin/bash

#Mount the disk first
(echo n; echo p; echo 1; echo ; echo; echo w) | fdisk /dev/xvdb
mkfs -t ext4 -m 1 -O dir_index,extent,sparse_super /dev/xvdb1
mkdir /mnt/d01
echo "/dev/xvdb1	/mnt/d01	ext4	noatime,nodiratime	1 2" >> /etc/fstab
mount /mnt/d01

#now install CM
wget http://archive.cloudera.com/cm5/installer/latest/cloudera-manager-installer.bin
chmod +x cloudera-manager-installer.bin
./cloudera-manager-installer.bin --i-agree-to-all-licenses --noprompt --noreadme --nooptions