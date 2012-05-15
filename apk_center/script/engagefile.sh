#!/bin/bash

filename=$1

if [[ ! -f $filename ]]
then
	exit
fi

filehash=`java -jar ApkUtil.jar hash "$filename"`
chmod 666 "$filename"

#echo "Ready to engage file "$filename"("$filehash")"

src="`echo \"$filename\" | tr ' ' '\?'`"
dst=$APKLIB_TMP/`md5sum "$filename" |awk -F" " '{print $1}'`

# If exists a file already make a link from it
if [[ -f $dst ]]
then
	rm "$filename"
	link "$dst" "$filename"
	echo "$dst"
else
	#echo mv $src $dst
	mv $src $dst
	./engage.sh $dst
	# engage this file
        link "$dst" "$filename"
	
        echo "$dst"
fi
