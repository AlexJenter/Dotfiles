#!/usr/bin/env bash

# git
source ~/.git-completion.bash

export PS1="\n\w \$(git-radar --bash --fetch) \n$ ";
export GIT_RADAR_COLOR="\\033[0;37m"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
