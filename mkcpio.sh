#!/bin/sh
rm -rf rootfs.cpio
cd rootfs
find . | cpio -o -H newc -R root:root > ../rootfs.cpio
cd ..