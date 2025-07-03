#!/bin/zsh

timestamp=$(date +"%Y%m%d%H%M%S")

filename="$timestamp.png"

slurp | grim -g - ~/codenotes/img/$filename

echo -n $filename | wl-copy

echo "Screenshot saved as $filename and filename copied to clipboard."
