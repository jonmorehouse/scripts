#!/usr/local/bin/bash
function alias_generator {
	# generate the alias path as needed
	alias_path="$1"
	if [ $# -gt 1 ]
	then 
		# if _ or "" is passed in, then we want to just pass in a blank
		if [[ $2 == "_" || $2 == "" ]]
		then
			alias_prefix=""
		else
			alias_prefix="$2-"
		fi
	else 
		alias_prefix="$(echo $1 | awk '{ n=split($0,a,"/"); print tolower(a[n]) }')-"
	fi
	
	# create parent alias -- unless flag is passed
	if [ ! $# -eq 3 ] 
	then
		parent=$(echo $alias_prefix | sed 's/-//')
		eval alias ${parent}='${alias_path}'
	fi

	# generate and export the aliases as needed
	for i in $(ls "$alias_path")
	do
		alias_name="$alias_prefix$i"
		alias_function="cd $alias_path/$i"
		eval alias ${alias_name}='${alias_function}'
	done
}
