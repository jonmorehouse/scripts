#!/usr/local/bin/zsh

brewfile=$HOME/dotfiles/Brewfile

installed=()

# fill our list of brewfiled - dependencies
grep install $brewfile | while read -r line 
do
	formula=`echo $line | awk '{ split($0,a, " "); print a[2] }'`

	installed+=($formula)
done 

# grab all dependencies
for dep in `brew list`
do
	formula=`echo $dep | awk '{ split($0,a," "); print a[1] }'`

	if [[ -n `brew info $formula | grep "Built from source with: --"` ]]
	then
		options=`brew info $formula | grep "Built from source with: --"` #| sed 's/"Built from source with"//g'`
		echo $options
	fi
done

