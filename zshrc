# vim:set ts=2 sts=2 sw=2 expandtab foldenable foldmethod=indent :foldlevel=0 ft=bash

# ZSH SETTINGS:
    HISTFILE=~/.zsh_history
    #HIST_STAMPS=mm/dd/yyyy
    HIST_STAMPS="yyyy-mm-dd"
    HISTSIZE=5000
    SAVEHIST=5000
    ZLE_RPROMPT_INDENT=0

    # TECLADO ABNT II
        #setxkbmap -model abnt2 -layout br -variant abnt2

# EXPORTS:
    # PATHS
        export PATH=$HOME/bin:/usr/local/bin:$PATH:$HOME/.local/share/node/bin
        export GIT_PATH=$HOME/Github

    # XDF_CONFIG:
        if [ -z "$XDG_CONFIG_HOME" ] ; then
          export XDG_CONFIG_HOME="$HOME/.config"
        fi

        if [ -z "$XDG_DATA_HOME" ] ; then
            export XDG_DATA_HOME="$HOME/.local/share"
        fi

        if [ -z "$XDG_CACHE_HOME" ] ; then
            export XDG_CACHE_HOME="$HOME/.cache"
        fi

    # USER BIN PATHS:
        if [ -d "$HOME/.bin" ] ;
          then PATH="$HOME/.bin:$PATH"
        fi

        if [ -d "$HOME/.local/bin" ] ;
          then PATH="$HOME/.local/bin:$PATH"
        fi

    #LANGUAGES:
        #Golang
        if [ -d "$HOME/.local/share/go" ] ;
            export GOPATH="$HOME/.go"
            export GOROOT="$HOME/.local/share/go"
            then PATH="$HOME/.local/share/go/bin:$PATH"
        fi

        #Nodejs
        if [ -d "$HOME/.local/share/node" ] ;
            export NPM_DIR="$HOME/.local/lib/npm"
            then PATH="$HOME/.local/share/node/bin:$PATH"
        fi

        #Rust
        if [ -d "$HOME/.local/share/cargo" ] ;
            then PATH="$HOME/.local/share/cargo/bin:$PATH"
        fi

        #PHP
        if [ -d "$HOME/.local/share/composer" ] ;
            export COMPOSER_HOME="$HOME/.local/share/composer"
            then PATH="$HOME/.local/share/composer/vendor/bin:$PATH"
        fi
