#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 [toggle]"
    exit 1
fi

action="$1"


play_next() {
    playerctl next
}

play_previous() {
    playerctl previous
}

toggle_play_pause() {
    playerctl play-pause
}


case "$action" in
    next)
        play_next
        ;;
    prev)
        play_previous
        ;;
    pause)
        toggle_play_pause
        ;;
    *)
        echo "Invalid action specified. Usage: $0 [next|prev|pause]"
        exit 1
        ;;
esac