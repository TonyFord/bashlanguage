#!/bin/bash

source ./language.bash
linit "./lang" # path to json files (./lang/lang_xx.json)
printf "%s %s\n" "`lout L_WHITE`" "`lout L_BLACK`"
