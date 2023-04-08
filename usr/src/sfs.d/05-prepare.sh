#!/bin/sh

mkdir -p /usr/src/deb
cp /var/lib/dpkg/status /usr/src/deb/dpkg_status.pre-build
touch /usr/src/deb/Packages
echo "deb [trusted=yes] file:///usr/src/deb ./" >/etc/apt/sources.list.d/lutris.list
