#!/bin/bash

#convert pcm files from Virtual Recorder to .ogg

for f in *.pcm ; do
ocenaudio $f

if [ -d converted ]; then
	mv $f converted
	else mkdir converted
	mv $f converted
fi

done
