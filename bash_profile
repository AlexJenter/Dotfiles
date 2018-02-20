#!/usr/bin/env bash

export PATH="/usr/local/mysql/bin:$PATH";
export PATH="/usr/local/php5/bin:$PATH";
export PATH="/usr/local/sbin:$PATH";
export PATH="/usr/local/bin:$PATH";
export PATH="/usr/local/bin/cmake:$PATH";
export PATH="~/bin/attribute-scripts:$PATH";
export PATH="$HOME/.yarn/bin:$PATH";
export PATH="$HOME/bin/imgcat:$PATH";



[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

for file in $HOME/.{bashrc,aliases,functions}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

