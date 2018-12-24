#!/bin/sh
export LINUXROOT=/data/local/mnt
export TMPDIR=/tmp
export HOME=/root
export USER=root
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:$PATH
export TERM=vt100

mount_and_chroot()
{
	echo "*************Mounting*************"

	mount -t proc proc ./proc
	mount -t sysfs sysfs ./sys
	mount -o bind /dev ./dev 
	mount -t devpts devpts ./dev/pts
	chroot ./ /bin/bash

	echo "*************Exiting from chroot*************"
}

cd /data/local/mnt/
FILES="$(ls -1)"
if [ -n "$FILES" ]; then
	mount_and_chroot
else
	echo "*************Mounting system*************"
	mount -t ext3 -o rw,noatime /dev/block/mmcblk0p1 /data/local/mnt
	mount_and_chroot
fi
