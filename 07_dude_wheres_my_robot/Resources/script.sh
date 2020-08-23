#!bin/bash
if [ "$#" -eq 1 ];
	then
		wget --mirror -A  README -P ./info -e robots=off $1/.hidden/
		find ./info -name README | xargs grep [0-9] | cut -d : -f2
		rm -rf ./info
	else
		echo enter IP only
fi
