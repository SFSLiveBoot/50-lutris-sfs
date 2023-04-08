#!/bin/sh

set -e

. "$(dirname "$0")/.common.sh"

set -x

git clone "$lutris_repo" /usr/src/deb/lutris
cd /usr/src/deb/lutris
apt-get build-dep -y .
dpkg-buildpackage -us -uc -b
cd ..
dpkg-scanpackages . > Packages
apt-get update
