#!/bin/sh
cdrom=meowlinux.iso
memory=1G
if [ -e /dev/kvm ]; then
	kvm="-enable-kvm"
fi
qemu-system-x86_64 \
	-cdrom ${cdrom} \
	-m ${memory} \
	${kvm}