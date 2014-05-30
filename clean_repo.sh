#!/usr/bin/env zsh
git fetch
# Update the index
git update-index -q --ignore-submodules --refresh
err=0

if [[ $(git status --short | grep \? | wc -l ) -gt 0 ]]
then
    echo >&2 "You have unadded files."
fi

# Disallow unstaged changes in the working tree
if ! git diff-files --quiet --ignore-submodules --
then
    echo >&2 "You have unstaged changes."
    git diff-files --name-status -r --ignore-submodules -- >&2
    err=1
fi

# Disallow uncommitted changes in the index
if ! git diff-index --cached --quiet HEAD --ignore-submodules --
then
    echo >&2 "Your index contains uncommitted changes."
    git diff-index --cached --name-status -r --ignore-submodules HEAD -- >&2
    err=1
fi

if [ $err = 1 ]
then
    echo >&2 "Please commit or stash them."
    exit 1
fi

