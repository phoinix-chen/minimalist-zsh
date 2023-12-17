#!/usr/bin/env zsh
# Program:
#       This program is used to configure various zsh behaviors.
# History:
#       2023/12/18      V1.0 released by Phoínix.

setopt APPEND_HISTORY           # Immediately append history instead of overwriting
setopt AUTO_CD                  # If only directory path is entered, cd there
setopt CORRECT                  # Auto correct mistakes
setopt EXTENDED_GLOB            # Allows using regular expressions with *
setopt HIST_IGNORE_ALL_DUPS     # If a new command is a duplicate, remove the older one
setopt HIST_IGNORE_SPACE        # Don't save commands that start with space
setopt INC_APPEND_HISTORY       # Save commands are added to the history immediately
setopt NO_BEEP                  # No beep sound
setopt NO_CASE_GLOB             # Case insensitive globbling
setopt NO_CHECK_JOBS            # Don't warn about running processes when exiting
setopt NUMERIC_GLOB_SORT        # Sort filenames numerically when it makes sense
setopt RC_EXPAND_PARAM          # Array expension with parameters
