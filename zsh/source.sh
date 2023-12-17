#!/usr/bin/env zsh
# Program:
#       This program is used for source files.
# History:
#       2023/12/18      V1.0 released by Phoínix.

# Source rc if it exists
[[ -f "${ZDOTDIR}/alias.sh" ]] && source "${ZDOTDIR}/alias.sh"
[[ -f "${ZDOTDIR}/option.sh" ]] && source "${ZDOTDIR}/option.sh"
[[ -f "${ZDOTDIR}/plugin.sh" ]] && source "${ZDOTDIR}/plugin.sh"

########    You can add the sources you need here.
# For example, you can add the following line to source nvm if it exists
[[ -f '/usr/share/nvm/init-nvm.sh' ]] && source '/usr/share/nvm/init-nvm.sh'
