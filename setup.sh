#! /bin/bash

# Zsh
stow -v -t ~ zsh

# Tmux
stow -v -t ~ tmux

# Fonts
mkdir -p ~/.config/fontconfig
stow -v -R -t ~/.config/fontconfig fonts

# Git
stow -v -t ~ git

# Neovim
mkdir -p ~/.config/nvim
stow -v -R -t ~/.config/nvim nvim

# i3
mkdir -p ~/.config/i3
stow -v -R -t ~/.config/i3 i3

# Polybar
mkdir -p ~/.config/polybar
stow -v -R -t ~/.config/polybar polybar

# Rofi
mkdir -p ~/.config/rofi
stow -v -R -t ~/.config/rofi rofi

# Conky
mkdir -p ~/.config/conky
stow -v -R -t ~/.config/conky conky

# Kitty
mkdir -p ~/.config/kitty
stow -v -R -t ~/.config/kitty kitty
