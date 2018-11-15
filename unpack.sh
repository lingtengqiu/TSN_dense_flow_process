#/bin/bash
while read line
do
	file_list=`ls $line`
	for file in $file_list
	do
		g=$(echo "${line}/${file}")
		types=${file%_*}
		./build/unpack --file $g --dir "$line/$types" --color
		echo "over $line"
	done
done < dataset_list
