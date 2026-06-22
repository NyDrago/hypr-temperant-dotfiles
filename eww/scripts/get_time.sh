#!/bin/bash
pos=$(playerctl position 2>/dev/null)
if [ -z "$pos" ]; then
    echo "0:00 / 0:00"
    exit 0
fi

len=$(playerctl metadata --format '{{ duration(mpris:length) }}' 2>/dev/null)
[ -z "$len" ] && len="0:00"

awk -v p="$pos" -v l="$len" 'BEGIN {
    min=int(p/60);
    sec=int(p%60);
    printf "%d:%02d / %s\n", min, sec, l
}'
