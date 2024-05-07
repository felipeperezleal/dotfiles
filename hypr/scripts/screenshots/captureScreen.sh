#!/bin/bash

dest_dir="$HOME/Pictures/Screenshots/"

filename="$(date +'%s_grim.png')"
grim -g "$(slurp -o)" "$dest_dir$filename"

wl-copy < "$dest_dir$filename"

play "$HOME/.config/hypr/assets/sounds/camera-shutter.ogg"
