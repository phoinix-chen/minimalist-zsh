#!/usr/bin/env zsh
# Program:
#       This program is used for alias commands.
# History:
#       2023/12/18      V1.0 released by Phoínix.

# General alias
alias sudo="sudo "
alias grep="grep --color=auto"
alias diff="diff --color=auto"
alias rm="rm -ri"
alias mv="mv -i"
alias ls="ls -lah --color=auto --group-directories-first"
alias df="df -h"

# Git
if (( $+commands[git] )); then
    alias gps="git push"
    alias gpl="git pull"
    alias gct="git commit -m"
    alias gad="git add ."
fi

# Neovim
if (( $+commands[nvim] )); then
    alias v="nvim"
fi

# Tmux
if (( $+commands[tmux] )); then
    alias tkl="tmux kill-session -t"
    alias tls="tmux list-sessions"
    alias tat="tmux attach"
fi
