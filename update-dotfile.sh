#!/bin/bash

cd ~/Development/dotfiles/

# Define the source directories and files
SOURCE_DIRS=(
    "$HOME/.config/helix"
    "$HOME/.config/iterm2"
    "$HOME/.config/nvim"
    "$HOME/.config/skhd"
    "$HOME/.config/yabai"
)

SOURCE_FILES=(
    "$HOME/.tmux.conf"
    "$HOME/.zshrc"
    "$HOME/.zshenv"
)

# Define the destination directory (current directory)
DEST_DIR=$(pwd)

# Copy each directory to the destination
for DIR in "${SOURCE_DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        cp -r "$DIR" "$DEST_DIR"
        echo "Copied $DIR to $DEST_DIR"
    else
        echo "Directory $DIR does not exist"
    fi
done

# Copy each file to the destination
for FILE in "${SOURCE_FILES[@]}"; do
    if [ -f "$FILE" ]; then
        cp "$FILE" "$DEST_DIR"
        echo "Copied $FILE to $DEST_DIR"
    else
        echo "File $FILE does not exist"
    fi
done

# Push the changes to the remote repository
currentTime=$(date)
git add .
git commit -m "Update dotfiles on $currentTime"
git push

cd -

