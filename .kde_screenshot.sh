#!/bin/zsh

timestamp=$(date +"%Y%m%d%H%M%S")

filename="$timestamp.png"

spectacle -r -b -n -o ~/codenotes/img/$filename

if [[ "$XDG_SESSION_TYPE" == "wayland" ]]; then
    echo -n "$filename" | wl-copy
elif [[ "$XDG_SESSION_TYPE" == "x11" ]]; then
    echo -n "$filename" | xsel --clipboard --input
fi
echo "Screenshot saved as $filename and filename copied to clipboard."
