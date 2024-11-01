#!/bin/sh
kernel=bzImage
initrd=rootfs.cpio
memory=1G
if [ -e /dev/kvm ]; then
	kvm="-enable-kvm"
fi
qemu-system-x86_64 \
	-kernel ${kernel} \
	-initrd ${initrd} \
	-m ${memory} \
	${kvm}