#!/usr/bin/env bash

for file in $HOME/.{bashrc,aliases}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
