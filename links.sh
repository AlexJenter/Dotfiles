#!/usr/bin/env bash
excludes="README.md\|links.sh\|DS_Store"

find . * -maxdepth 0 -type f -print | grep -v ${excludes} |
while read line; do
    # echo "Processing file '$line'"
    ln -s -f "$HOME/bin/Dotfiles/$line" "$HOME/.$line"
done
