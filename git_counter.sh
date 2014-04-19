#!/usr/local/bin/bash

# this script should be called whenever a git commit happens
# useful for tracking my statistics for all projects

origin=$(git config --get remote.origin.url)
branch=$(git rev-parse --abbrev-ref HEAD)

# now 
file=$(date | awk '{ print tolower($1)"-"tolower($2)"-"$3 }')
file_paths=$HOME/.commits/$file
message="$origin @ $branch @ $(date)"

echo $origin
echo $filename
echo $branch
echo $message



