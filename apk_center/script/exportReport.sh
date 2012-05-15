#!/bin/bash

apkfolder=$1
reportfile=$apkfolder/$2

#echo $apkfolder
#echo $reportfile

if [[ ! -f $reportfile ]]
then
	./findpattern.sh $apkfolder
fi

echo $apkfolder,`cat $reportfile` >> pattern.result
