#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 [toggle]"
    exit 1
fi

action="$1"

volume_status=$(pamixer --get-mute)

toggle_mute() {
    if [ "$volume_status" = true ]; then
        pamixer -u
    else
        pamixer -m
    fi
}

raise_volume() {
    if [ "$volume_status" = true ]; then
        pamixer -u
    fi
    pamixer -i 5
}

lower_volume() {
    if [ "$volume_status" = true ]; then
        pamixer -u
    fi
    pamixer -d 5
}



case "$action" in
    toggle)
        toggle_mute
        ;;
    raise)
        raise_volume
        ;;
    lower)
        lower_volume
        ;;
    *)
        echo "Invalid action specified. Usage: $0 [toggle|raise|lower]"
        exit 1
        ;;
esac
