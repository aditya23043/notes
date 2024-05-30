#/bin/bash

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

cp -r $HOME/notes/dmenu $HOME/notes/dunst $HOME/notes/dwl $HOME/notes/dwm $HOME/notes/emacs $HOME/notes/fish $HOME/notes/foot $HOME/notes/mako $HOME/notes/niri $HOME/notes/nvim $HOME/notes/st $HOME/.config
cd $HOME/.config/dmenu && sudo make clean install
cd $HOME/.config/dwm && sudo make clean install
cd $HOME/.config/st && sudo make clean install
cd $HOME/.config/dwl && sudo make clean install

mkdir $HOME/AUR_packages

pico(){
  cd $HOME/AUR_packages && git clone https://aur.archlinux.org/$1 && cd $1 && makepkg -si && cd
}

sudo pacman -S --needed foot git fish chromium xorg xorg-xinit xorg-drivers libinput wayland wlroots libxkbcommon wayland-protocols pkgconf nvidia nvidia-settings nvidia-utils acpi bottom bluez bluez-libs bluez-utils blueman clang cmake dunst mako eza feh flameshot gvfs gvfs-gphoto2 gvfs-mtp libnotify lxappearance-gtk3 make chrony mpv mtpfs ncdu nodejs npm ntfs-3g chrony blueman openssh pavucontrol pipewire-alsa pipewire-audio pipewire-pulse pipewire-session-manager playerctl tar tldr ttf-fira-sans ttf-jetbrains-mono-nerd ttf-iosevka-nerd ttf-ubuntu-font-family unzip usbutils vulkan-headers wget xbindkeys xclip wl-clipboard zip slurp grim nwg-look swayimg swaybg waycheck wlr-randr firefox thunar papirus-icon-theme wev python-pytube zathura zathura-pdf-mupdf dosfstools mtools fish

# Tor Keys
gpg --auto-key-locate nodefault,wkd --locate-keys torbrowser@torproject.org

chsh

pico niri-bin
pico tor-browser-bin
pico neovim-nightly-bin
pico ttf-comfortaa
pico ybacklight
pico dmenu-wayland-git
pico qogir-cursor-theme-git
pico vulkan-amdgpu-pro
pico transmission-gtk3
pico flat-remix-gtk
pico dracula-gtk-theme
# pico winegui

systemctl start bluetooth
systemctl start chronyd

timedatectl set-timezone Asia/Kolkata

cp /etc/X11/xinit/xinitrc $HOME/.xinitrc
chmod +x $HOME/.xinitrc

: ' GITHUB SSH
git config --global user.email "adityascottish27@gmail.com"
git config --global user.name "Aditya Gautam"
ssh-keygen -t ed25519 -C "adityascottish27@gmail.com"
exec ssh-agent fish
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub
'

: ' /etc/X11/xorg.conf.d/30-touchpad.conf
Section "InputClass"
    Identifier "touchpad"
    Driver "libinput"
    MatchIsTouchpad "on"
    Option "Tapping" "on"
    Option "TappingButtonMap" "lmr"
    Option "NaturalScrolling" "true"
EndSection
'

: ' SUDO
sudo nvim /etc/sudoers
adi ALL=NOPASSWD: /bin/ybacklight
'

: ' ssh
sudo chmod 600 ~/.ssh/id_ed25519
sudo chmod 600 ~/.ssh/id_ed25519.pub
sudo chmod 644 ~/.ssh/known_hosts
sudo chmod 755 ~/.ssh
'
