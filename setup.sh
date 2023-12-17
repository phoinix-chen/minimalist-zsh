#!/usr/bin/env bash
# Program:
#       This program is an automatic installation script for Linux.
# History:
#       2023/12/18      V1.0 released by Phoínix.

if ! which zsh &> /dev/null; then
    echo "Please install zsh first"
    exit -1
fi

[[ -f '/etc/zsh/zshenv' ]] && cp /etc/zsh/zshenv ./zsh/zshenv-backup
sudo mv -f ./zshenv /etc/zsh/zshenv

if [[ ! -d "$HOME/.config" ]]; then
    mkdir -p "$HOME/.config"
elif [[ -d "$HOME/.config/zsh" ]]; then
    mv "$HOME/.config/zsh" ./zsh/zsh-backup
fi

mv ./zsh "$HOME/.config"
chsh -s $(which zsh)
zsh
