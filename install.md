```bash
yay -S ly sway xorg-server-xwayland \ 
          waybar otf-font-awesome alacritty \
          polkit-gnome gnome-keyring swaylock-effects-git \
          networkmanager sway-launcher-desktop pipewire pipewire-alsa pipewire-pulse \
          playerctl brightnessctl bluez bluez-utils blueman swaync pipewire-zeroconf avahi
```
          
```bash
systemctl enable --now ly bluetooth NetworkManager avahi-daemon.service
```
