#!/bin/sh

apkfolder=$1

report_err(){
	echo "$1,"$apkfolder
}

# When engaging finished it will generate a meta file to keep all parameters passed to it
if [ ! -f $apkfolder/meta ]
then
	report_err "uncomplete"
fi

# Check apk file
if [ ! -f $apkfolder/apk ]
then
	report_err "noapk"
fi

# Check decoded folder
if [ ! -d $apkfolder/decoded ]
then
	report_err "nodecoded"
fi

if [ ! -f $apkfolder/decoded/apktool/AndroidManifest.xml ]
then
        report_err "nodecoded_apktool"
fi

if [ ! -f $apkfolder/decoded/dex2jar/apk_dex2jar.jar ]
then
        report_err "nodecoded_dex2jar"
fi

# Check entry and cert

if [ ! -f $apkfolder/decoded/entry ]
then
        report_err "noentry"
fi

if [ ! -f $apkfolder/decoded/cert ]
then
        report_err "nocert"
fi

