#!/bin/sh
sh mkcpio.sh
cp bzImage rootfs.cpio isoroot/boot
rm -rf meowlinux.iso
grub-mkrescue isoroot -o meowlinux.iso
rm -rf isoroot/boot/bzImage isoroot/boot/rootfs.cpio
