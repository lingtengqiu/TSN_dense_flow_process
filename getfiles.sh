dir=UCF101
ls $1 | grep .avi >tempfiles.txt
while read line
do
	echo "$dir/$line"
done <tempfiles.txt
rm tempfiles.txt
