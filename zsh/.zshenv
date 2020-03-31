function main {
    export XDG_CACHE_HOME=~/.cache
    export XDG_CONFIG_HOME=~/.config

    export ZSH_COMPDUMP=$XDG_CACHE_HOME/zsh

    local DF=$XDG_CONFIG_HOME/dotfiles

    export NPM_CONFIG_USERCONFIG=$DF
    export ZDOTDIR=$DF/zsh
    export ZSH=$DF/oh-my-zsh
    export STARSHIP_CONFIG=$DF/starship.toml
    export NVM_DIR=$DF/nvm
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
}

main