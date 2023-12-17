# History:
#       2023/12/18      V1.0 released by Phoínix.

# /etc/zsh/zshenv: system-wide .zshenv file for zsh(1).
#
# This file is sourced on all invocations of the shell.
# If the -f flag is present or if the NO_RCS option is
# set within this file, all other initialization files
# are skipped.
#
# This file should contain commands to set the command
# search path, plus other important environment variables.
# This file should not contain commands that produce
# output or assume the shell is attached to a tty.
#
# Global Order: zshenv, zprofile, zshrc, zlogin

if [[ -z "$PATH" || "$PATH" == "/bin:/usr/bin" ]]
then
	export PATH="/usr/local/bin:/usr/bin:/bin:/usr/games"
fi

# Check if XDG_CONFIG_HOME exist. (If not then create)

if [[ -z "$XDG_CONFIG_HOME" ]]
then
	export XDG_CONFIG_HOME="$HOME/.config"
fi

# Change ZDOTDIR
if [[ -d "$XDG_CONFIG_HOME/zsh" ]]
then
	export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
fi
