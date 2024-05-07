#!/bin/bash

# Capturar la pantalla y enviarla al portapapeles
grim -g "$(slurp)" - | wl-copy

# Reproducir el sonido de la cámara
play "$HOME/.config/hypr/assets/sounds/camera-shutter.ogg"
