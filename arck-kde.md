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


```
