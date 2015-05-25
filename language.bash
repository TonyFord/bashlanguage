#!/bin/bash

function linit()
{
	system_ln=$(locale | grep LANGUAGE | cut -d= -f2 | cut -d_ -f1)

	if [ -e "./lang/lang_$system_ln.json" ]; then
		langjson=$(<./lang/lang_$system_ln.json)
	else 
		if [ -e "./lang/lang_en.json" ]; then
			langjson=$(<./lang/lang_en.json)
		fi
	fi

}

function lout()
{
	echo $langjson | jq -r '.["'$1'"]'
}

linit
