#!/bin/bash -x

TARGET=tedhello_1.0

# build deb
dpkg -b $TARGET

# build package info
dpkg-scanpackages -m . > Packages
gzip -k -f Packages

# sign release info
apt-ftparchive release . > Release
gpg --default-key "m983040031@gmail.com" -abs -o - Release > Release.gpg
gpg --default-key "m983040031@gmail.com" --clearsign -o - Release > InRelease

