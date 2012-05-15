#!/bin/bash

#commonpay=`grep a-o "pay" $1`

filename=$1/manifest
content=`cat $filename`
#echo "Checking manifest "$content

check_pattern()
{
        pattern_name=$1
        pattern=$2
        text=$3

	#echo "checking "$filename"with pattern "$pattern_name"(\""$pattern"\")"
	#echo `grep -o "$pattern" $filename`
	if [[ $text == *"$pattern"* ]]
	then
		echo $pattern_name
	fi
}

#check_pattern "common" "pay" "$content"
check_pattern "$pay_91" "com.nd.commplatform.activity" "$content"
check_pattern "$pay_gfan" "com.gfan.sdk.payment" "$content"
check_pattern "$pay_yee" "com.iapppay.api.android" "$content"

