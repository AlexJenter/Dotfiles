# Make Tab autocomplete regardless of filename case
set completion-ignore-case on


# aliases
alias ..="cd ..";
alias ...="cd ../..";
alias ....="cd ../../..";
alias ll="ls -la"
alias l="ls -Glah"

# prompt
source ~/.git-prompt.sh;
GIT_PS1_SHOWDIRTYSTATE=true;

PS1='\n$(tput setaf 198)\u ';   # user
PS1+='$(tput sgr0)on ';
PS1+='$(tput setaf 226)\h ';  # host
PS1+='$(tput sgr0)in ';
PS1+='$(tput setaf 87)\w ';  # cwd
PS1+='$(tput sgr0)$(__git_ps1 "[%s]") ';  # cwd
PS1+='$(tput sgr0)\n> ';  # cwd
export PS1;
