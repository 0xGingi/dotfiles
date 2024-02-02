#!/bin/bash
echo 'This script installs and all required packages and backsup/applies all my config files for hyprland'
echo 'Do not run this as sudo/root'
echo 'This script does everything except installing sddm in case there are conflicts with exists gdm or other login managers'
echo 'This script assumes you are using bash, starship and some parts of the script may have issues in zsh'
read -p "Press enter to continue"
clear
echo 'Installing Needed Packages'

if ! command -v yay &> /dev/null
	then
echo 'yay not installed - installing now'
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si
cd ..
echo 'yay is now installed - continuing'
	else
echo 'yay is already installed - continuing'
fi

yay -S --needed --noconfirm qt5-wayland qt5ct qt6-wayland qt6ct qt5-svg qt5-quickcontrols2 qt5-graphicaleffects gtk3 polkit-gnome pipewire jq wl-clipboard cliphist python-requests pacman-contrib
yay -S --needed --noconfirm spdlog-git sdbus-cpp
yay -S --needed --noconfirm hyprland-git kitty mako waybar-hyprland-git nvim wofi xdg-desktop-portal-hyprland-git xdg-desktop-portal-gtk hyprpaper neovim swappy grim slurp btop pamixer pavucontrol network-manager-applet starship papirus-icon-theme indicator-kdeconnect-git kdeconnect ttf-jetbrains-mono-nerd noto-fonts-emoji lxappearance nwg-look-bin cliphist starship nautilus swaylock-effects wlogout brightnessctl bluez bluez-utils blueman gvfs
clear

echo 'backing up existing configs'
    for DIR in btop hypr kitty mako nvim swaylock waybar wlogout wofi
    do 
        DIRPATH=~/.config/$DIR
        if [ -d "$DIRPATH" ]; then 
            echo -e "$CAT - Config for $DIR located, backing up."
            mv $DIRPATH $DIRPATH-back
            echo -e "$COK - Backed up $DIR to $DIRPATH-back."
        fi
        
    done

STARPATH=~/.config
if [ -f "starship.toml" ]; then
cp starship.toml starship-back.toml
fi

mv btop ~/.config/
mv hypr ~/.config/
mv kitty ~/.config/
mv mako ~/.config/
mv nvim ~/.config/
mv swaylock ~/.config/
mv waybar ~/.config/
mv wlogout ~/.config/
mv wofi ~/.config/
mv starship.toml ~/.config/starship.toml
echo -e '\neval "$(starship init bash)"' >> ~/.bashrc

DIRPATH=~/
if [ -d "Pictures" ]; then
cp flatppuccin_4k_macchiato.png ~/Pictures/flatppuccin_4k_macchiato.png
else
mkdir ~/Pictures
cp flatppuccin_4k_macchiato.png ~/Pictures/flatppuccin_4k_macchiato.png
fi

clear

echo 'Configs successfully copied!'
echo 'Start with sddm, gdm, or the Hyprland command'
