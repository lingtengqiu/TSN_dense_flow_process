#/bin/bash

dir=$1
pathes=`ls $dir`
for path in ${pathes}
do
	obj_path=`echo -n \`pwd\` && echo "/$dir/$path"`
	frame=`ls $obj_path | wc -l`
	frame=$((($frame-4)/3))
	key_word=${path#*_}
	key_word=${key_word%%_*}
	classindx=`grep $key_word classInd.txt | cut -d ' ' -f 1`
	echo -n $obj_path && echo -n " " && echo -n $frame && echo -n " " &&echo $classindx
done

