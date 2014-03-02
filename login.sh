#!/usr/local/bin/zsh

# bootstrap our environment
#\. source $HOME/.zshrc

# This script is called at startup by a launch agent - symlinks/startup.plist
$HOME/dotfiles/scripts/dock.scpt

# now lets start up various tmux sessions
#mux start personal
# only start up the personal set up if we don't have a server in place 
if [ ! `tmux list-session` ] 
then
	
	rvm use system
	mux personal

fi
	
