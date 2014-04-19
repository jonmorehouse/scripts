#!/usr/local/bin/bash

# this script should be called whenever a git commit happens
# useful for tracking my statistics for all projects

BASE_DIR=$(git rev-parse --show-toplevel)
echo $BASE_DIR


