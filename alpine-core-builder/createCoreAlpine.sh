#!/usr/bin/env bash

# Create the base directory for the new docker core container
rootfs="/var/tmp/docker-rootfs"
mkdir $rootfs

# Create the apk directory for target
 mkdir $rootfs/etc/apk -p

 echo $repositoryurl/main > $rootfs/etc/apk/repositories
 echo $repositoryurl/community >> $rootfs/etc/apk/repositories

# Install base packages into target
apk --root "$rootfs" --update-cache --keys-dir /etc/apk/keys add --arch x86_64 --initdb ${packages[*]//,/ }

# Cleanup Cache
rm -f "$rootfs/var/cache/apk"/*

# Security: Disable root password!
sed -ie 's/^root::/root:!:/' "$rootfs/etc/shadow"

tar -J -f /target/rootfs.tar.xz --numeric-owner --exclude='dev/*' -C "$rootfs" -c .
