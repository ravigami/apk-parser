#!/bin/bash

apkfolder=$1
apkfile=$apkfolder/apk

if [[ ! -f $apkfile ]]
then
	echo "Invalid apkfolder"
	exit
fi

# Basic information needed to extract
# permissions - Permissions
# resources - Resources
# bading - Badging
# cert - Certificate hash & Ceritificate info
# files - File list
# xmls/* - Xmltree
# unzipped/* - File entries

certhash_file=$apkfolder/certhash
permision_file=$apkfolder/permission
resource_file=$apkfolder/resource
badging_file=$apkfolder/badging
files_file=$apkfolder/files
xml_folder=$apkfolder/xmls
unzipped_folder=$apkfolder/unzipped
decoded_folder=$apkfolder/decoded
fin_tag=$apkfolder/fin

if [[ ! -f $fin_tag ]]
then
	aapt d xmltree "$apkfile" AndroidManifest.xml > "$apkfolder"/manifest
	aapt d permissions "$apkfile" > "$apkfolder"/permissions
	aapt d --values resources "$apkfile" > "$apkfolder"/resources
	aapt d 	badging "$apkfile" > "$apkfolder"/badging
	aapt list $apkfile > "$apkfolder"/files

	rm -rf $unzipped_folder
	unzip -q "$apkfile" -d "$unzipped_folder"

	rm -rf $xml_folder
	for xml in `cat $files_file |grep .xml$`; do
		mkdir -p $xml_folder/$xml
		rm -r $xml_folder/$xml
		aapt d xmltree $apkfile $xml > $xml_folder/$xml
	done

	# Advanced information needed to extract
	# - Source code decompiled
	$(dirname $0)/apktool d -f --keep-broken-res $apkfolder/apk $decoded_folder/apktool/
	touch $fin_tag
fi
echo "$apkfolder"
