### installation
## loadkeys <TAB> to dvorak
# localectl set-keymap --no-convert dvorak
## create partitions
# cfdisk -> dos
# boot partition - primary - ~ 10G - bootable (sda1)
# swap partition - primary - ~ 2x ram (sda2)
# home partition - extended - rest of drive (sda3)
# home partition - extension - rest of drive (sda5)
## format partitions
# mkfs.ext4 /dev/sda1
# mkfs.ext4 /dev/sda5
# mkswap /dev/sda2
# swapon /dev/sda2
## mount partitions
# mount /dev/sda1 /mnt
# mkdir /mnt/home
# mount /dev/sda5 /mnt/home
## install Arch base system
# pacstrap /mnt base base-devel (vim python python2)
## create fstab file
# genfstab /mnt >> /mnt/etc/fstab
## switch to installation
# arch-chroot /mnt /bin/bash
## edit the locale
# vim /etc/locale.gen ## uncomment 'en_US.UTF-8 UTF 8'
## generate new locales
# locale-gen
## create locale conf
# echo "LANG=en_US.UTF-8" >> /etc/locale.conf
## set timezone
# ln -s /usr/share/zoneinfo/<country>/<city> /etc/localtime
## set standard time
# hwclock --systohc --utc
## set root password
# passwd
## set hostname
# echo "<hostname>" >> /etc/hostname
## make network persistent
# systemctl enable dhcpcd
## install grub
# pacman -S grub
# grub-install /dev/sda
# grub-mkconfig -o /boot/grub/grub.cfg
## exit chroot, unmount, reboot
# exit
# umount /mnt/*
# reboot
### post-installation
## update system
# pacman -Syu
## configure pacman
# vim /etc/pacman.conf ## uncomment [multilib] \ Include ...
# pacman -Syy
## update mirrorlist
## https://www.archlinux.org/mirrorlist/ # choose country, copy result to the top of /etc/pacman.d/mirrorlist
## install and use wget on the given url to get the file
# pacman -Syy
## create a normal user
# useradd -m -g users -G wheel,storage,power -s /bin/bash <username>
# passwd <username>
## install sudo
# pacman -S sudo
## add user to sudoers
# visudo ## uncomment %wheel ALL=(ALL) ALL

sudo pacman -S python python2 python-pip python2-pip git perl python-setuptools python-pip mpdecimal xz tk python2-setuptools python2-pip
# bashrc
echo '
# nice things
echo "Greetings, Your Majesty"
export PS1="[\u \w ]\$"

# folder nav
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

PROMPT_DIRTRIM=2

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
' >> ~/.bash_aliases
