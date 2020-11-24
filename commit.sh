#!/bin/bash

msg=$1
if [ ! -z "$msg" ]; then
	git add .
	git commit -m "$msg"
	git push -u origin master
fi
