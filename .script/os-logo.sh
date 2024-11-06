#!/bin/bash

OS=$(cat /etc/os-release | grep "^ID=" | cut --delimiter "=" --fields 2) 

declare LOGO

case $OS in
	arch) 
		LOGO=""
		;; 
	nixos) 
		LOGO=""
		;;
	*) 
		LOGO=""
		OS="linux"
		;;
esac

echo '{"text": "'$LOGO'", "class": "'$OS'"}'

