#!/usr/local/bin/zsh

# initialize brewfile output
if [[ -n $1 ]]
then
	brewfile=$1
else
	
	brewfile="Brewfile"
fi

# now lets create all of the taps needed
for tap in `brew tap`
do
	echo "tap $tap" >> $brewfile	

done

# we need to update after we tap to ensure all formulae can be found
echo "update" >> $brewfile

# download all the formulae and parse out their options
for formula in `brew list`
do
	# initialize options
	build_info=$(brew info $formula | grep "Built from source with: --")

	# print out basic install -- ie: no options
	if [[ ! -n $build_info ]]
	then
		echo "install $formula" >> $brewfile
		continue
	fi

	# now lets grab the options that were declared there!		
	# format the options properly
	build_options=$(echo $build_info | sed 's/Built from source with://' | sed 's/^[ \t]*//')

	# now lets create our entry 
	formula_entry="install $formula $build_options"

	echo $formula_entry >> $brewfile	
done

