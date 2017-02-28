#!/usr/bin/env bash
excludes="README.md\|links.sh\|DS_Store|install.sh|macos"
find . * -maxdepth 0 -type f -print | grep -v ${excludes} |
while read line; do
    ln -s -f "$HOME/bin/Dotfiles/$line" "$HOME/.$line"
    echo $line
done
