export ZSH=/home/faat/.oh-my-zsh

ZSH_THEME="my-theme"
HIST_STAMPS="dd.mm.yyyy"

# autocorrection
setopt CORRECT_ALL

export KEYTIMEOUT=1

plugins=(colored-man-pages git git-flow z vi-mode)

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8
export EDITOR='vim'
