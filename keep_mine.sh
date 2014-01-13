#!/bin/bash

# this script is for managing git local branch commits
# merge driver which keeps the current branch version

#example usage:

#.git/config
	
	#[merge "keep_mine"]
		
		#name = Always keep current branch version during merge
		#driver = keep_mine.sh %0 %A %B

#.gitattributes:
	
	#dont_merge.txt merge=keep_mine

echo "HELLO WORLD" > $HOME/Desktop/test.txt

exit 0

