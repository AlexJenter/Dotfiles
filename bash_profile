#!/usr/bin/env bash

export PATH="$PATH:/usr/local/mysql/bin";
export PATH="$PATH:/usr/local/php5/bin";
export PATH="$PATH:/usr/local/sbin";
export PATH="$PATH:/usr/local/bin";
export PATH="$PATH:/usr/local/bin/cmake";
export PATH="$PATH:$HOME/bin/attribute-scripts";
export PATH="$PATH:$HOME/.yarn/bin";

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

for file in $HOME/.{bashrc,aliases,functions}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

