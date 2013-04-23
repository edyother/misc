#!/bin/bash

# for burning live CDs or DVDs
if [ "$1" = -c ]; then
	wodim dev=/dev/cdrw -v -data $2
	elif  [ "$1" = -d ]; then
		wodim dev=/dev/sg2 -v -data $2
else
	echo "./burniso.sh [ -c or -d ] filename.iso"
fi

