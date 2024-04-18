#!/bin/bash

: ' Live Environment
$ iwctl station wlan0 connect PRIADI_5G
  > password: ***********
$ ping google.com
$ cfdisk /dev/nvme0n1
  > 500M EFI
  > Rest Linux Filesystem
  > Write
$ mkfs.vfat -F32 /dev/<EFI>
$ mkfs.ext4 /dev/<Linux FS>
$ mount /dev/<Linux FS> /mnt
$ pacstrap -K /mnt base base-devel linux linux-firmware vim
$ arch-chroot /mnt
$ vim /etc/locale.gen
  > en_US.UTF-8 UTF-8
$ locale-gen
$ vim /etc/hostname
  > archlinux
$ vim /etc/hosts
  > 127.0.0.1     localhost
  > ::1           localhost
  > 127.0.1.1     archlinux
$ mkinitcpio -P
$ passwd
$ pacman -S grub efibootmgr networkmanager sudo
$ mkdir /boot/efi
$ mount /dev/<EFI> /boot/efi
$ grub-install --target=x86_64-efi --bootloader-id=GRUB --efi-directory=/boot/efi
$ grub-mkconfig -o /boot/grub/grub.cfg
$ useradd -m adi
$ passwd adi
$ usermod -aG wheel,video,storage,audio adi
$ visudo
  > %wheel ALL=(ALL:ALL) ALL
$ systemctl enable NetworkManager.service
$ exit
$ umount -l /mnt
$ reboot
'

paru -S xorg xorg-xinit xorg-drivers libinput wayland wlroots libxkbcommon wayland-protocols pkgconf nvidia nvidia-settings nvidia-utils acpi dracula-gtk-theme bottom clang cmake dunst mako eza feh flameshot gvfs gvfs-gphoto2 gvfs-mtp libnotify lxappearance-gtk3 make mpv mtpfs ncdu neovim-nightly-bin nodejs npm ntfs-3g chrony openssh pavucontrol pipewire-alsa pipewire-audio pipewire-pulse pipewire-session-manager playerctl tar tldr transmission-gtk3 ttf-comfortaa ttf-fira-sans ttf-jetbrains-mono-nerd ttf-iosevka-nerd ttf-ubuntu-font-family unzip usbutils vulkan-amdgpu-pro vulkan-headers wget xbindkeys xclip wl-clipboard ybacklight zip slurp grim nwglook swayimg dmenu-wayland-git waycheck wlr-randr firefox thunar papirus-icon-theme qogir-cursor-theme-git wev
