#!/bin/bash
if [[ -d $APKLIB_APK ]]
then
	sudo rm -rf $APKLIB_APK/*
else
	echo "invalid environment"
fi

if [[ -d $APKLIB_ERR ]]
then
	sudo rm -rf $APKLIB_ERR/*
else
	echo "invalid environment"
fi
