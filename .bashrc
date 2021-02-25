#!/usr/bin/env bash

case $- in
  *i*) ;;
    *) return;;
esac

if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export BASH_IT="/home/q/Public/bash-it"

export BASH_IT_THEME='powerline'

export GIT_HOSTING='git@git.domain.com'

unset MAILCHECK

export IRC_CLIENT='irssi'

export TODO="t"

export SCM_CHECK=true

source "$BASH_IT"/bash_it.sh

if [ -f /etc/bashrc ]; then 
    . /etc/bashrc
fi

export JAVA_HOME=/usr/java/latest

#  User specific 'export'

#android development configuration

export ANDROID_SDK_ROOT=$HOME/.and/
export PATH=${PATH}:$HOME/.and/tools:$HOME/.and/platform-tools
export PATH=${PATH}:$HOME/.and/tools/bin
export PATH=${PATH}:$HOME/.and/bundle-tool
export PATH=$PATH:$HOME/.and/emulator/
export ANDROID_AVD_HOME=$HOME/.android/avd
export ANDROID_HOME=$ANDROID_SDK_ROOT

#[end] android development configuration

# -------------------------
# -------------------------

#golang GOPATH & GOROOT configuration

export GOPATH=$HOME/go/
export GOROOT=$HOME/Public/go
export PATH=$GOROOT/bin:$PATH

#[end] GOPATH & GOROOT configuration

# -------------------------
# -------------------------

#golang _GO's_BINARY configuration

PATH=$HOME/go/bin:$PATH
export PATH

#[end] golang _GO's_BINARY configuration

# -------------------------
# -------------------------

#dart & flutter configuration

PATH=/usr/lib64/dart/bin:$PATH
export PATH

PATH=$HOME/.pub-cache/bin:$PATH
export PATH

export PATH=$PATH:/home/q/Public/flutter/bin/

#[end] dart & flutter configuration

# -------------------------
# -------------------------

#postgresql configuration

PATH=/usr/local/pgsql/bin:$PATH
export PATH

#[end] postgresql configuration

# -------------------------
# -------------------------

#sdkman configuration

PATH=$HOME/Public/sdkman/bin:$PATH
export PATH

# -------------------------
# -------------------------

#jo - 'json data creator' configuration

PATH=$HOME/Public/jo_json_data_creator/bin:$PATH
export PATH

#[end] jo configuration

#for nano colour syntax

export YELLOW=`echo -e '\033[1;33m'`
export LIGHT_CYAN=`echo -e '\033[1;36m'`
export GREEN=`echo -e '\033[0;32m'`
export NOCOLOR=`echo -e '\033[0m'`
export LESS="-iMSx4 -FXR"
export PAGER="sed \"s/^\(([0-9]\+ [rows]\+)\)/$GREEN\1$NOCOLOR/;s/^\(-\[\ RECORD\ [0-9]\+\ \][-+]\+\)/$GREEN\1$NOCOLOR/;s/|/$GREEN|$NOCOLOR/g;s/^\([-+]\+\)/$GREEN\1$NOCOLOR/\" 2>/dev/null | less"

#end nano_colour

# The next line updates PATH for the Google Cloud SDK.
#if [ -f '/home/q/.google/sdk/path.bash.inc' ]; then . '/home/q/.google/sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
#if [ -f '/home/q/.google/sdk/completion.bash.inc' ]; then . '/home/q/.google/sdk/completion.bash.inc'; fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/q/Public/sdkman"
[[ -s "/home/q/Public/sdkman/bin/sdkman-init.sh" ]] && source "/home/q/Public/sdkman/bin/sdkman-init.sh"
