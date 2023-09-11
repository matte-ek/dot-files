#!/bin/bash

# Push settings to ~/.config
if [ $1 == "push" ]; then
    cp -r rofi ~/.config/
    cp -r kitty ~/.config/
    cp -r i3 ~/.config/
    cp -r polybar ~/.config/
    cp -r dunst ~/.config/
    cp -r picom ~/.config/
fi

# Pull from current ~/.config
if [ $1 == "pop" ]; then
   cp -r ~/.config/rofi .
   cp -r ~/.config/kitty .
   cp -r ~/.config/i3 .
   cp -r ~/.config/polybar .
   cp -r ~/.config/dunst .
   cp -r ~/.config/picom .
fi
