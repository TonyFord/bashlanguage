#!/bin/bash

function linit()
{
	system_ln=$(locale | grep LANGUAGE | cut -d= -f2 | cut -d_ -f1)

	if [ -e "$1/lang_$system_ln.json" ]; then
		langjson=$(<$1/lang_$system_ln.json)
	else 
		# default language = en ################################
		if [ -e "$1/lang_en.json" ]; then
			langjson=$(<$1/lang_en.json)
		fi
	fi
}

function lout()
{
	outp=`echo $langjson | jq -r '.["'$1'"]'`
	if [ "$outp" == "" ]; then
		outp=$1
	fi
	echo $outp
}
