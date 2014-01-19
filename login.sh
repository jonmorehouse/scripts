#!/usr/local/bin/zsh

# set up proper environment for this script
. $HOME/.zshrc
. $HOME/.ssh/environment

# This script is called at startup by a launch agent - symlinks/startup.plist
echo "TEST" >> $HOME/Desktop/startup

# clear the screen from before
clear

# now lets start up various tmux sessions
mux start personal
