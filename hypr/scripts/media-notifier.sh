#!/bin/bash


eww close desktop-media-hud


playerctl metadata --follow --format '{{title}}' 2>/dev/null | while read -r line; do
    if [ -n "$line" ]; then
        
        eww open desktop-media-hud
        
        
        sleep 4
        
        
        eww close desktop-media-hud
    fi
done
