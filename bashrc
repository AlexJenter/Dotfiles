export PATH="$PATH:`yarn global bin`";

# Make Tab autocomplete regardless of filename case
set completion-ignore-case on

# git
source ~/.git-completion.bash

export PS1="\n\w \$(git-radar --bash --fetch) \n$ ";
export GIT_RADAR_COLOR="\\033[0;37m"
