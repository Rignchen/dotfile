#!/bin/bash

OS=$(cat /etc/os-release | grep "^ID=" | cut --delimiter "=" --fields 2) 

case $OS in
	arch) 
		echo ""
		;; 
	nixos) 
		echo ""
		;; 
	*) 
		echo ""
		;;
esac

