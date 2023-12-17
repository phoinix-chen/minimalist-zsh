#!/usr/bin/env zsh
# Program:
#       This program is used to download and activate plug-ins.
# History:
#       2023/12/18      V1.0 released by Phoínix.

() {
    local PLUGINDIR="${ZDOTDIR}/plugins"

    autoplug() {
        local author=$1
        local plugin=$2

        if [[ ! -d "${PLUGINDIR}/${plugin}" ]]; then
            echo "[INFO] $plugin not found. Installing...."
            local url="https://www.github.com/${author}/${plugin}.git"
            git clone --depth 1 $url "${PLUGINDIR}/${plugin}"
            echo "[SUCCESS] $plugin installed."
        fi

        if [[ "$plugin" == "powerlevel10k" ]]; then
            source ${PLUGINDIR}/powerlevel10k/powerlevel10k.zsh-theme
        else
            source ${PLUGINDIR}/${plugin}/${plugin}.plugin.zsh
        fi
    }

    # Essential
    autoplug zdharma-continuum fast-syntax-highlighting
    autoplug zsh-users zsh-autosuggestions
    autoplug zsh-users zsh-history-substring-search
    # Theme
    autoplug romkatv powerlevel10k
    # Optional
    autoplug jeffreytse zsh-vi-mode
}
