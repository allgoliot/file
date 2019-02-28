#!/bin/bash
#if [ $# == 0 ];then
#	echo "Usage : ./testbruno2.sh "
#else
read -p "Comment tu t'apelle ? " nom
	if [ $nom != "Bruno" ]; then
		echo "Tu ne t'apelle pas Bruno"
	else
		echo "Tu t'apelle Bruno !"
	fi
