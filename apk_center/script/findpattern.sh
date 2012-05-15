#!/bin/bash

# Payments
export pay_gfan="pay_gfan"
export pay_yee="pay_yee"
export pay_alipay="pay_alipay"
export pay_91="pay_91"

# Advertisements
export ad_admob="ad_admob"

echo "Find pattern "$1
apkfolder=$1
reportfolder=$apkfolder/report
reportfile_pattern=$reportfolder/pattern
reportfile_url=$reportfolder/url

if [[ ! -d $reportfolder ]]
then
	mkdir $reportfolder
fi
echo "Reports wrote into "$reportfolder

# paramter must be a apk folder
if [[ -f $reportfile_pattern ]]
then
	rm $reportfile_pattern
fi

echo "Patterns wrote in "$filename
./findpattern_manifest.sh $apkfolder >>$reportfile_pattern
./findpattern_src.sh $apkfolder|sort|uniq >>$reportfile_pattern
echo "Pattern="`cat $reportfile_pattern | wc -l`

echo "Urls wrote in $reportfile_url"
./extract_url.sh $apkfolder $reportfile_url
echo "Urls="`cat $reportfile_url | wc -l`
