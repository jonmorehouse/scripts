#!/usr/local/bin/zsh

# This script is called at startup by a launch agent - symlinks/startup.plist
$HOME/dotfiles/scripts/dock.scpt

# now lets start up various tmux sessions
mux start personal
