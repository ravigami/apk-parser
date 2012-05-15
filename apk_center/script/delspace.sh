#!/bin/bash

filename=$1
src="`echo \"$filename\" | tr ' ' '\?'`"
dst="`echo \"$filename\" | tr ' ' 'f'`"
md5=$APKLIB_TMP/`md5sum $filename |awk -F" " '{print $1}'`
echo "md5="$md5

if [[ -f $dst ]]
then
	dst="`echo \"$filename\" | tr ' ' 'g'`"
fi

if [[ ! -f $md5 ]]
then
	echo $md5
	
	echo mv "$filename" "$md5"
fi
