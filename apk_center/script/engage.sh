#!/bin/bash
filename=$1

if [[ `./check_env.sh` == *ERROR* ]]
then
	echo "Set up environment first"
	exit
fi

#filename=`./engagefile.sh "$filename"`
# storage every apk with it's hash value
if [[ ! -f $filename ]]
then
	echo "File $filename not exists"
	exit
fi

filehash=`java -jar ApkUtil.jar hash "${filename}"`
echo "Processing "$filename
echo "FileHash="$filehash

# never storage two same apk
apkfolder=$APKLIB_APK/$filehash
if [[ -d $apkfolder ]]
then
	echo "Folder $apkfolder exists."
	yes 1|rm $filename
	exit	
fi

# use aapt to see if it can be installed
ret=`./aapt d xmltree $1 AndroidManifest.xml 2>&1`
if [[ $ret == *ERROR* ]]
then
	# if it's not a valid apk, put it into a err folder
	echo "Invalid apk file"
	yes 1|mv -f "$filename" $APKLIB_ERR/$filehash
else
	# do all apk parsers
	echo "Valid apk file"
	# decode all
	echo "Create a new folder $apkfolder"
	mkdir $apkfolder
	apkfolder=$APKLIB_APK/$filehash
	yes 1|mv -f "$filename" $apkfolder/apk
	#cp "$filename" $apkfolder/apk

	decodedfolder=$apkfolder/decoded
	mkdir $decodedfolder

        # Apktool
        #java -Xmx1024m -jar ApkUtil.jar info $apkfolder/apk $decodedfolder/apktool/ 
	./apktool d -f --keep-broken-res $apkfolder/apk $decodedfolder/apktool/

        # Dex2jar
	#dex2jarfolder=$decodedfolder/dex2jar/
	#$APKLIB_TOOL/dex2jar.sh $apkfolder/apk
	#echo "dex2jarfolder="$dex2jarfolder
	#if [[ -f $apkfolder/apk_dex2jar.jar ]]
	#then
	#	mkdir $dex2jarfolder
	#	mv $apkfolder/apk_dex2jar.jar $dex2jarfolder
	#	#unzip $apkfolder/apk_dex2jar.jar -d $dex2jarfolder
	#else
	#	echo "dex2jar failed"
	#fi
        # Undx

        # more...
	./extractinfo.sh $apkfolder
	./findpattern.sh $apkfolder
	
	echo $@ >$apkfolder/meta
	echo $apkfolder >> engaged.result

        #chmod -R 544 $decodedfolder/apktool
	#chmod -R 544 $decodedfolder/dex2jar
        #chmod 544 $apkfolder/apk
fi
