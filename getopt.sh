#i/bin/bash
#getopt command

while getopt -o a:b: -l help:  
do
	echo "opt=$opt, OPTARG=$OPTARG"
	case $opt in
		--help)
			echo "help is show more information about getopt command";;
	esac

done
