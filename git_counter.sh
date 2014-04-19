#!/usr/local/bin/bash

# this script should be called whenever a git commit happens
# useful for tracking my statistics for all projects

origin=$(git config --get remote.origin.url)
branch=$(git rev-parse --abbrev-ref HEAD)

# now 
filename=$HOME/.commits/$(date | awk '{ print $1" "$2" "$3 }')
message="$origin \@ $branch \@ $(date)"

echo $origin
echo $filename
echo $branch
echo $message



