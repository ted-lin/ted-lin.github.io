#!/bin/bash -x

rm -rf boot*

wget http://ftp.cn.debian.org/debian/pool/main/b/boot-info-script/boot-info-script_0.77-1_all.deb
wget http://deb.debian.org/debian/pool/main/b/boot-info-script/boot-info-script_0.77-1.dsc
wget http://deb.debian.org/debian/pool/main/b/boot-info-script/boot-info-script_0.77.orig.tar.gz
wget http://deb.debian.org/debian/pool/main/b/boot-info-script/boot-info-script_0.77-1.debian.tar.xz

tar -xf boot-info-script_0.77.orig.tar.gz
tar -xf boot-info-script_0.77-1.debian.tar.xz

mv debian bootinfoscript-0.77/

