#!/bin/bash

echo "============================================="
echo "   Installing Hypr-Temperant Configurations   "
echo "============================================="


mkdir -p ~/.config/eww/scripts
mkdir -p ~/.config/hypr/scripts
mkdir -p ~/.config/swaync
mkdir -p ~/.config/waybar

echo "Copying configuration files..."


[ -d "./eww" ] && cp -r ./eww/* ~/.config/eww/
[ -d "./swaync" ] && cp -r ./swaync/* ~/.config/swaync/
[ -d "./waybar" ] && cp -r ./waybar/* ~/.config/waybar/


if [ -d "./hypr" ]; then
    echo "Installing scripts..."
    cp -r ./hypr/* ~/.config/hypr/scripts/
fi

echo "Setting permissions..."

chmod +x ~/.config/eww/scripts/*.sh 2>/dev/null
chmod +x ~/.config/hypr/scripts/*.sh 2>/dev/null

echo "============================================="
echo "           Installation Complete!            "
echo "============================================="
