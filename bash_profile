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

# Maximum number of history lines in memory
export HISTSIZE=50000
# Maximum number of history lines on disk
export HISTFILESIZE=50000
# Ignore duplicate lines
export HISTCONTROL=ignoredups:erasedups
# When the shell exits, append to the history file 
#  instead of overwriting it
shopt -s histappend
 
# After each command, append to the history file 
#  and reread it
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"
