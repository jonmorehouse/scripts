#!/usr/local/bin/bash

# this script should be called whenever a git commit happens
# useful for tracking my statistics for all projects

origin=$(git config --get remote.origin.url)
branch=$(git rev-parse --abbrev-ref HEAD)

# now 
file=$(date | awk '{ print tolower($1)"-"tolower($2)"-"$3 }')
file_path=$HOME/.commits/$file
message="$origin#$branch $(date)"

echo $message
echo $file_path



