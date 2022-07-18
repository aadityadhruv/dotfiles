#!/bin/bash

#sudo pacman -S wine wine-mono winetricks dunst steam htop thunderbird bitwarden firefox xorg-server bspwm sxhkd polybar rofi picom git lightdm bluez pipewire pipewire-jack pipewire-alsa pipewire-pulse brightnessctl alacritty xfce-power-manager blueman lightdm-gtk-greeter arandr nitrogen 


sudo xbps-install wine wine-mono winetricks dunst steam htop thunderbird bitwarden firefox xorg bspwm sxhkd polybar rofi picom git lightdm bluez pipewire brightnessctl alacritty xfce4-power-manager blueman lightdm-gtk3-greeter arandr nitrogen pcmanfm NetworkManager


sudo xbps-install wine-32bit void-repo-multilib{,-nonfree} legendary python3 python3-pip libgcc-32bit libstdc++-32bit libdrm-32bit libglvnd-32bit mesa-dri-32bit mesa-dri mesa-32bit
