#!/bin/bash
#echo "Checking source code at "$1
apkfolder=$1
#echo "decoded folder="$decodedfolder
apktoolfolder=$apkfolder/decoded/apktool/smali/

if [[ ! -d $apktoolfolder ]]
then
	exit
fi

#echo "apktool folder="$apktoolfolder
smali_files=`find $apktoolfolder -type f -name "*.smali"`

patterns=""
pattern_count=0

check_pattern()
{
        pattern_name=$1
        pattern=$2
        text=$3

        if [[ $text == *"$pattern"* ]]
        then
#                echo $pattern_name
		#patterns=$patterns$'\n'$pattern_name
		echo $pattern_name
                return
        fi
}

for smali_file in $smali_files;
do
	#echo "Checking smali "$smali_file
	content=`cat $smali_file`
	check_pattern $pay_alipay "alipay" "$content"
done
#echo $patterns
