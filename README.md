# dotfiles
some of my dotfiles for my hyprland desktop

## Auto Install: 
```git clone https://github.com/0xGingi/dotfiles && cd dotfiles && chmod +x install.sh && bash install.sh```

## Manual Install:

Packages needed for configs (There are more optionals, check install.sh)
```
yay -S --needed spdlog-git hyprland kitty mako waybar-hyprland-git wofi xdg-desktop-portal-hyprland hyprpaper neovim swappy grim slurp btop pamixer pavucontrol network-manager-applet starship papirus-icon-theme ttf-jetbrains-mono-nerd noto-fonts-emoji lxappearance nwg-look-bin polkit-gnome wl-clipboard cliphist starship nautilus swaylock-effects wlogout 
```
```
git clone https://github.com/0xGingi/dotfiles
cd dotfiles
cp -r btop ~/.config/btop
cp -r hypr ~/.config/hypr
cp -r kitty ~/.config/kitty
cp -r mako ~/.config/mako
cp -r nvim ~/.config/nvim
cp -r swaylock ~/.config/swaylock
cp -r waybar ~/.config/waybar
cp -r wlogout ~/.config/wlogout
cp -r wofi ~/.config/wofi
cp starship.toml ~/.config/starship.toml
echo -e '\neval "$(starship init bash)"' >> ~/.bashrc
cp  flatppuccin_4k_macchiato.png ~/Pictures/flatppuccin_4k_macchiato.png
```

![alt text](https://github.com/0xGingi/dotfiles/blob/main/Screenshots/Desktop.png?raw=true)
![alt text](https://github.com/0xGingi/dotfiles/blob/main/Screenshots/Wofi.png?raw=true)
