#!/bin/bash

VIDEO="~/.config/mpvpaper/bg.mp4"

pkill mpvpaper

hyprctl monitors | grep 'Monitor' | awk '{print $2}' | while read -r MONITOR; do
    mpvpaper "$MONITOR" "$VIDEO" -s -o "--loop-file" &
done
