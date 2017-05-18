#!/usr/bin/env bash

export PATH="/usr/local/mysql/bin:$PATH";
export PATH="$PATH:`yarn global bin`";
export PATH="$PATH:~/bin/attribute-scripts";

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

for file in $HOME/.{bashrc,aliases,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
