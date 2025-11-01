#!/usr/bin/env bash

set -e # stop if failed

repos="$HOME/data/repos"

mkdir -p $HOME/Pictures/Screenshots
mkdir -p $repos

cd $repos && git clone git@github.com:phnaharris/dotfiles.git

paru -S --noconfirm intel-ucode nvidia
paru -S --noconfirm base base-devel linux linux-firmware linux-headers net-tools
paru -S --noconfirm eza fzf git htop man-db neofetch openresolv pass pass-otp tree ufw unzip wget wireguard-tools
paru -S --noconfirm sway xdg-desktop-portal-wlr
paru -S --noconfirm pipewire pipewire-pulse
paru -S --noconfirm anydesk-bin archlinux-keyring blueman bluez-utils bolt brave-bin brave-nightly-bin brightnessctl aur-check-updates-bin chromium dunst fcitx5 fcitx5-configtool fcitx5-gtk fcitx5-qt fcitx5-unikey fd fish gcc gimp google-chrome mise neovim network-manager-applet networkmanager nodejs-commitizen nomacs noto-fonts qbittorrent qt5-wayland qt6-wayland ripgrep solaar stow swappy swaylock telegram-desktop thunar tidy tlp-rdw tmux ttf-noto-nerd vim vlc waybar wf-recorder wl-clipboard wlr-randr wofi xfce-polkit zathura zathura-pdf-mupdf
paru -S --noconfirm keybase-bin

gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
sudo usermod --shell /usr/bin/fish phnaharris
