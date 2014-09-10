#!/bin/bash

for i in {1..24}
do
	ord=$((${i} + 97))
	letter=$(printf \\$(printf '%03o' ${ord}))
	folder=$(printf '/u%02d' ${i})
	(echo n; echo p; echo 1; echo ; echo; echo w) | fdisk /dev/xvd${letter}
	mkfs -t ext4 -m 1 -O dir_index,extent,sparse_super /dev/xvd${letter}1
	mkdir ${folder}
	echo "/dev/xvd${letter}1	${folder}	ext4	noatime,nodiratime	1 2" >> /etc/fstab
	mount ${folder}
done