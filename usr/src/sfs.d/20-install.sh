#!/bin/sh

set -e

. "$(dirname "$0")/.common.sh"

dpkg_status=/usr/src/deb/dpkg_status.pre-build "$lbu/scripts/apt-sfs.sh" "$DESTDIR" lutris ${extra_pkgs:+$extra_pkgs}
