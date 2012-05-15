
# all tools place here
toolpath=$APKLIB_TOOL
apklib=$APKLIB_APK
apkerr=$APKLIB_ERR
apktmp=$APKLIB_TMP

ret_aapt=`aapt 2>&1`
#echo "RETURN:"$ret_aapt
if [[ $ret_aapt == "*command not found*" ]]
then
	echo "ERROR1"
	exit
fi


if [[ ! -d $toolpath || ! -d $apklib || ! -d $apkerr || ! -d $apktmp ]]
then
        echo "ERROR2"
        exit
fi
