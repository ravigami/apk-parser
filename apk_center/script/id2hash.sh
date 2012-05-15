#!/bin/bash
filename=$1
hash=`java -jar ApkHash.jar $filename`
echo $filename,$hash
