#!/usr/bin/env zsh

if [[ ! -d $HOME/.commits ]]; then
    mkdir -p $HOME/.commits
fi
# this script should be called whenever a git commit happens
# useful for tracking my statistics for all projects
origin=$(git config --get remote.origin.url)
branch=$(git rev-parse --abbrev-ref HEAD)

# generate filepath
file=$(date | awk '{ print tolower($1)"-"tolower($2)"-"$3 }')
file_path=$HOME/.commits/$file

# generate message
message="$origin#$branch $(date)"

# update the correct file
echo $message >> $file_path


