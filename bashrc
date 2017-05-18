#!/usr/bin/env bash

# Make Tab autocomplete regardless of filename case

# git
source ~/.git-completion.bash

export PS1="\n\w \$(git-radar --bash --fetch) \n$ ";
export GIT_RADAR_COLOR="\\033[0;37m"

export PATH="$HOME/.yarn/bin:$PATH"
