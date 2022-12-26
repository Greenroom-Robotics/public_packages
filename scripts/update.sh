#!/bin/bash

set -ev

cd debian

# Packages & Packages.gz
dpkg-scanpackages --multiversion . > Packages
gzip -k -f Packages

# Release, Release.gpg & InRelease
apt-ftparchive release . > Release
gpg --default-key "${GPG_KEY_NAME}" -abs -o - Release > Release.gpg
gpg --default-key "${GPG_KEY_NAME}" --clearsign -o - Release > InRelease