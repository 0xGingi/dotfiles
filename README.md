# dotfiles
some of my dotfiles for my hyprland desktop

## Auto Install: 
```git clone https://github.com/0xGingi/dotfiles && cd dotfiles && chmod +x install.sh && bash install.sh```

## Manual Install:

Packages needed for configs (There are more optionals, check install.sh, Make sure to backup existing configs)
```
yay -S --needed spdlog-git hyprland kitty mako waybar-hyprland-git wofi xdg-desktop-portal-hyprland hyprpaper neovim swappy grim slurp btop pamixer pavucontrol network-manager-applet starship papirus-icon-theme ttf-jetbrains-mono-nerd noto-fonts-emoji lxappearance nwg-look-bin polkit-gnome wl-clipboard cliphist starship thunar swaylock-effects wlogout 
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
mv waybar ~/.config/
mv wlogout ~/.config/
mv wofi ~/.config/
mv starship.toml ~/.config/starship.toml
echo -e '\neval "$(starship init bash)"' >> ~/.bashrc
cp  flatppuccin_4k_macchiato.png ~/Pictures/flatppuccin_4k_macchiato.png
```
## Other Info
Make sure to replace monitors (check hyprctl monitors) with yours in hypr/hyprland.conf

For nvim plugins:

``` sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim' ```

```:PlugInstall```

![alt text](https://github.com/0xGingi/dotfiles/blob/main/Screenshots/Desktop.png?raw=true)
![alt text](https://github.com/0xGingi/dotfiles/blob/main/Screenshots/Wofi.png?raw=true)
