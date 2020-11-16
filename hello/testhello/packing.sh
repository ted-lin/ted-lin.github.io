#/bin/bash -x

# process package
dpkg-scanpackages -m . > Packages
gzip -k -f Packages

# sign release info
apt-ftparchive release . > Release
gpg --default-key "m983040031@gmail.com" -abs -o - Release > Release.gpg
gpg --default-key "m983040031@gmail.com" --clearsign -o - Release > InRelease

# output ppa path
echo "deb https://ted-lin.github.io/hello/hello ./" > hello.list
