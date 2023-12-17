#!/usr/bin/env zsh
# Program:
#       Main program.
# History:
#       2023/12/18      V1.0 released by Phoínix.

# Enable Powerlevel10k instant prompt. (Should stay close to the top of .zshrc)
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Source file
[[ -f "${ZDOTDIR}/source.sh" ]] && source "${ZDOTDIR}/source.sh"

# History
HISTFILE="${ZDOTDIR}/.histfile"
HISTSIZE=100000
SAVEHIST=$HISTSIZE

zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up      # arrow up
bindkey "$terminfo[kcud1]" history-substring-search-down    # arrow down
bindkey '^[[A' history-substring-search-up                  # arrow up
bindkey '^[OA' history-substring-search-up                  # arrow up
bindkey '^[[B' history-substring-search-down                # arrow down
bindkey '^[OB' history-substring-search-down                # arrow down
bindkey -M vicmd '^[[A' history-substring-search-up         # vi cmd mode arrow up
bindkey -M vicmd '^[OA' history-substring-search-up         # vi cmd mode arrow up
bindkey -M vicmd '^[[B' history-substring-search-down       # vi cmd mode arrow down
bindkey -M vicmd '^[OB' history-substring-search-down       # vi cmd mode arrow down
bindkey -M viins '^[[A' history-substring-search-up         # vi insert mode arrow up
bindkey -M viins '^[OA' history-substring-search-up         # vi insert mode arrow up
bindkey -M viins '^[[B' history-substring-search-down       # vi insert mode arrow down
bindkey -M viins '^[OB' history-substring-search-down       # vi insert mode arrow down

# Color
autoload -U colors && colors
autoload -U compinit && compinit
autoload -U compinit colors zcalc

# Tab completion
zstyle ':completion:*' matcher=list 'm:{[:lower:][:upper:]}={[:upper:][:lower]}'
zstyle ':completion:*' list-colors "${(s.:.)--color=auto}"
zstyle ':completion:*' rehash true
zstyle ':completion:*' menu select

# Color man pages
export LESS_TERMCAP_mb=$'\E[01;32m'
export LESS_TERMCAP_md=$'\E[01;32m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;47;34m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;36m'
export LESS=-R

# Completion
zstyle :compinstall $ZDOTDIR/.zshrc
autoload -Uz compinit
compinit

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
