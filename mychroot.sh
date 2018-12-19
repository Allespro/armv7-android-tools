#!/bin/sh

export LINUXROOT=/data/local/mnt
export TMPDIR=/tmp
export HOME=/root
export USER=root
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:$PATH
export TERM=vt100

#mkdir $LINUXROOT
#mount -t ext3 -o noatime,rw /dev/block/mmcblkXpY

mount -t proc proc $LINUXROOT/proc
mount -t sysfs sysfs $LINUXROOT/sys
mount -o bind /dev $LINUXROOT/dev 
mount -t devpts devpts $LINUXROOT/dev/pts
mount -o bind /system $LINUXROOT/system

chroot /data/local/mnt /bin/bash
