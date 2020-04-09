```

pacman -S xorg-server xorg-xinit xterm
pacman -S plamsa-desktop
pacman -S sddm
systemctl enable sddm.service

pacman -S konsole dolphin firefox kate

pacman -S networkmanager plasma-nm

systemctl stop dhcpcd
systemctl disable dhcpcd
systemctl enable NetworkManager
systemctl start NetworkManager

pacman -S pulseaudio plasma-pa
pacman -S ark gwenview kipi-plugins spectacle okular

pacman -S python base-devel git code

pacman -S wget
yay -S skypeforlinux-stable-bin anydesk-bin
pacman -S telegram-desktop
yay windscribe-cli

sudo pacman -S latte-dock
sudo pacman -S xf86-video-nouveau
sudo pacman -S xdg-user-dirs
xdg-user-dirs-update
sudo pacman -S latte-dock
sudo pacman -S xorg-xrandr
sudo pacman -S systemsettings user-manager

# preview sddm theme
sddm-greeter --test-mode --theme /usr/share/sddm/themes/breeze
sudo mkdir /etc/sddm.conf.d
sudo cp /usr/lib/sddm/sddm.conf.d/default.conf /etc/sddm.conf.d/
sudo vim /etc/sddm.conf.d/default.conf

sudo pacman -S kdeplasma-addons
sudo pacman -S kscreen








```
