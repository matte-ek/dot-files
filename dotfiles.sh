#!/bin/bash

# Push settings to ~/.config
if [ $1 == "push" ]; then
    cp -r rofi ~/.config/
    cp -r kitty ~/.config/
    cp -r i3 ~/.config/
    cp -r polybar ~/.config/
    cp -r dunst ~/.config/
    cp -r picom ~/.config/
    cp -r zathura ~/.config/
    cp -r waybar ~/.config/
    cp -r hypr ~/.config/
    cp -r .scripts ~/
    cp .vimrc ~/
    cp .zshrc ~/
    cp -r .vim ~/
fi

# Pull from current ~/.config
if [ $1 == "pull" ]; then
   cp -r ~/.config/rofi .
   cp -r ~/.config/kitty .
   cp -r ~/.config/i3 .
   cp -r ~/.config/polybar .
   cp -r ~/.config/dunst .
   cp -r ~/.config/picom .
   cp -r ~/.config/zathura .
   cp -r ~/.config/hypr .
   cp -r ~/.config/waybar .
   cp ~/.vimrc .
   cp ~/.zshrc .
   cp -r ~/.vim .
   cp -r ~/.scripts .
fi
