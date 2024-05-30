#!/bin/bash

if [[ "$1" == "1" ]]; then

	efi_part="$2"
	home_part="$3"

	mount $home_part /mnt
	mkdir /mnt/boot
	mount $efi_part /mnt/boot
	pacstrap -K /mnt base base-devel linux-lts linux-firmware vim linux-lts-headers linux-lts-docs nvidia-lts
	genfstab -U /mnt >> /mnt/etc/fstab
	arch-chroot /mnt


elif [[ "$1" == "2" ]]; then

	ln -sf /usr/share/zoneinfo/Asia/Kolkata /etc/localtime
	hwclock --systohc
	sed -i 's/\#en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/g' /etc/locale.gen
	locale-gen
	echo "LANG=en_US.UTF-8" >> /etc/locale.conf
	echo "archlinux" > /etc/hostname
	echo -e "\n127.0.0.1\tlocalhost\n::1\t\tlocalhost\n127.0.1.1\tarchlinux" >> /etc/hosts
	mkinitcpio -P
	passwd
	pacman -S efibootmgr networkmanager sudo network-manager-applet wireless_tools wpa_supplicant dialog os-prober mtools dosfstools
	bootctl --path=/boot install
	echo -e "title\tArch Linux\nlinux\t\/vmlinuz-linux-lts\ninitrd\t\/initramfs-linux-lts.img\noptions\troot=/dev/nvme0n1p4 rw" > /boot/loader/entries/arch.conf
	sed -i 's/^default.*/default arch-\*/g' /boot/loader/loader.conf
	systemctl enable NetworkManager
	useradd -m adi
	passwd adi
	usermod -aG wheel,audio,video,storage,uucp adi
	sed -i 's/\# \%wheel ALL=(ALL:ALL) ALL/\%wheel ALL=(ALL:ALL) ALL/g' /etc/sudoers

fi
