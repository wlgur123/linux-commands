#!/bin/bash
#getopts

while getopts a:b:c:d: opt
do
	echo "opt=$opt, OPTARG=$OPTARG"
done
