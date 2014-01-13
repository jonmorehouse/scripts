#!/bin/bash

# http://stackoverflow.com/questions/928646/how-do-i-tell-git-to-always-select-my-local-version-for-conflicted-merges-on-a-s
# this script is for managing git local branch commits
# merge driver which keeps the current branch version

#example usage:

#.git/config
	
	#[merge "keep_mine"]
		
		#name = Always keep current branch version during merge
		#driver = keep_mine.sh %0 %A %B

#.gitattributes:
	
	#dont_merge.txt merge=keep_mine

echo "Keep mine merge" >> $HOME/Desktop/test.txt

exit 0
