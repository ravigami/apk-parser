#!/bin/bash

is_folder_exists ()
{
	folder=$1
	if [[ -d $folder ]]
	then
		return 0
	else
		echo "Not exists folder"$folder
		return 1
	fi
}

if [[ -f `hostname` ]]
then
	echo "configuration exists"
	exit
fi

echo "APKLIB_TOOL=?"
read input_APKLIB_TOOL
echo "APKLIB_APK=?"
read input_APKLIB_APK
echo "APKLIB_ERR=?"
read input_APKLIB_ERR
echo "APKLIB_TMP=?"
read input_APKLIB_TMP

APKLIB_TOOL="$input_APKLIB_TOOL"
APKLIB_APK="$input_APKLIB_APK"
APKLIB_ERR="$input_APKLIB_ERR"
APKLIB_TMP="$input_APKLIB_TMP"

is_folder_exists "$APKLIB_TOOL"
ret_tool=$?
is_folder_exists "$APKLIB_APK"
ret_apk=$?
is_folder_exists "$APKLIB_ERR"
ret_err=$?
is_folder_exists "$APKLIB_TMP"
ret_tmp=$?

if [[ $ret_tool -eq 0 && $ret_apk -eq 0 && $ret_err -eq 0 && $ret_tmp -eq 0 ]]
then
	echo "Fine"
	hostname=`hostname`
	if [[ -f $hostname ]]
	then
		echo "A configuration exists"
	else	
		echo export APKLIB_TOOL="$APKLIB_TOOL" >> $hostname
		echo export APKLIB_APK="$APKLIB_APK" >> $hostname
		echo export APKLIB_ERR="$APKLIB_ERR" >> $hostname
		echo export APKLIB_TMP="$APKLIB_TMP" >> $hostname
		echo "Configuration generated"
	fi
else
	echo "Invailid environment"
fi
