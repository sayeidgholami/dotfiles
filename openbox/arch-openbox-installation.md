**Arch Installation Guide**
==

1. **Update System Clock**
  - `timedatectl set-ntp true`
1. **Partitioning**
  - use `cfdisk` to create your partitions
  - `lsblk` to see all partitions
  - `mkfs.ext4 /dev/sda1`
  - `mkswap /dev/sda2`
  - `swapon /dev/sdX2`
1. **Mount the file systems**
  - `mount /dev/sda1 /mnt`
1. **Installation**
  - `nano /etc/pacman.d/mirrorlist` choose your mirrors
  - `pacstrap /mnt base`  Install base package group(the os)
1. **Configure the system**
  - `genfstab -U /mnt >> /mnt/etc/fstab`
  - `arch-chroot /mnt`  chroot to new system
  - `ln -sf /usr/share/zoneinfo/Region/City /etc/localtime` Time zone
  - `hwclock --systohc` Hardware clock: generate /etc/adjtime
  - Uncomment *en_US.UTF-8 UTF-8*  from `/etc/locale.gen`
  - Run `locale-gen`
  - Create the `/etc/locale.conf` and add `LANG=en_US.UTF-8` to it
1. **Network Configurations**
  - `nano /etc/hostname` named your machine
  - `nano /etc/hosts` add :
    - `127.0.0.1    localhost`
	- `::1               localhost`
	- `127.0.1.1    <myhostname>.localdomain    <myhostname>`
1. **Root password**
  - Run `passwd` give a password to root user
1. **Boot loader**
  - `pacman -S grub`
  - `grub-install --target=i386-pc /dev/sda`
  - `grub-mkconfig -o /boot/grub/grub.cfg`
1. **Add user**
  - `useradd -m <username>`
  - `usermod -aG wheel,audio,video,storage,optical <username>`
  - `passwd <username>`  Give a password to the user
  - Install vim `pacman -S vim` to able to run visudo
  - Run `visdo` and uncomment Wheel ALL(ALL=ALL) to make user been sudoers
1. **Enable Network**
  - `systemctl enable dhcpcd`
1. **Reboot**
  - Run `exit`
  - `umount -R /mnt`  umount the system
  - Run `reboot now`
  
