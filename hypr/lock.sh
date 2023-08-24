#!/bin/bash
WALLPAPER=~/.cache/wal/colors.json
if [ -f "$WALLPAPER" ]; then
    WALLPAPER=$(cat ~/.cache/wal/colors.json | grep wallpaper | cut -d '"' -f 4)
  else
  WALLPAPER=~/.config/hypr/wallpaper.jpg
fi

swaylock -i $WALLPAPER --indicator-y-position 1000 --clock --effect-blur 3x3 --effect-vignette 0:1 --fade-in 0.2
