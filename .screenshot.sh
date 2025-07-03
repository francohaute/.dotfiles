#!/bin/zsh

# Generate a timestamp
timestamp=$(date +"%Y%m%d%H%M%S")

# Define the filename
filename="$timestamp.png"

# Start Flameshot and save the screenshot with the filename
flameshot gui -p ~/codenotes/img/$filename

# Save the filename to the X11 clipboard
echo -n $filename | xsel --clipboard --input

echo "Screenshot saved as $filename and filename copied to clipboard."

