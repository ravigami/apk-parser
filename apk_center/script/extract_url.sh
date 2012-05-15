#echo "checking $1"
#find $1 -name "*_d" -type d -exec find {} -type f -exec /home/fxp/extracturl.sh \;
#find $1 -name "*_d" -type f -exec find {} -type f \;

find $1/decoded/apktool/ -type f -exec ./_extract_url.sh  {} \; |sort|uniq >$2
