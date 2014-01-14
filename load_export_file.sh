#!/bin/bash
# make this script callable from anywhere!
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# note include functionality
if [ -f $1 ]
then
	# loop through and export the file as needed
	while read line 
	do
		if [[ ! -n $line || =~  ]]
		then

			echo $line

		fi
		continue
		
		# check to see if its an include script!
		if [[ $line =~ include* ]]
		then
			# if so then recursively call with the correct file
			file=`echo $line | awk '{ split($0, a, " "); print a[2] }'`

			# check if the filename was found and make sure it exists!
			if [[ !(-n $file) && -f $file  ]]
			then
				# now recursively call the load function
				$DIR/$0 $file

			else
				# print message 
				echo "Include not found for: $file" 
			fi
		else
			
			echo $line
		fi
	done < $1
fi
