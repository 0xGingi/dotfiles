# dotfiles
some of my dotfiles for my catppuccin themed hyprland desktop

## Auto Install: 
```git clone https://github.com/0xGingi/dotfiles && cd dotfiles && chmod +x install.sh && bash install.sh```

## Manual Install:

Packages needed for configs (There are more optionals, check install.sh, Make sure to backup existing configs)
```
yay -S --needed spdlog-git sdbus-cpp-git xdg-desktop-portal-gtk hyprland-git kitty mako nwg-panel xwaylandvideobridge-git wofi xdg-desktop-portal-hyprland-git hyprpaper neovim swappy grim slurp btop pamixer pavucontrol network-manager-applet starship papirus-icon-theme ttf-jetbrains-mono-nerd noto-fonts-emoji lxappearance nwg-look-bin polkit-kde-agent wl-clipboard cliphist starship dolphin swaylock-effects wlogout 
```
```
git clone https://github.com/0xGingi/dotfiles
cd dotfiles
mv btop ~/.config/
mv hypr ~/.config/
mv kitty ~/.config/
mv mako ~/.config/
mv nvim ~/.config/
mv swaylock ~/.config/
mv nwg-panel ~/.config/
mv wlogout ~/.config/
mv wofi ~/.config/
mv starship.toml ~/.config/starship.toml
echo -e '\neval "$(starship init bash)"' >> ~/.bashrc
cp  flatppuccin_4k_macchiato.png ~/Pictures/flatppuccin_4k_macchiato.png
```
## Other Info
Make sure to replace monitors (check hyprctl monitors) with yours in hypr/hyprland.conf

For Dolphin Theme:
https://github.com/catppuccin/Kvantum

![swappy-20240207_202434](https://github.com/0xGingi/dotfiles/assets/104647854/29f7ec84-3ffe-4aa7-9234-cd32592ea182)
![swappy-20240207_202435](https://github.com/0xGingi/dotfiles/assets/104647854/792608df-bd42-4eea-adba-378ecf81e5df)
![swappy-20240207_202433](https://github.com/0xGingi/dotfiles/assets/104647854/13b5aeac-6abc-4aff-83dd-81bea0538994)
