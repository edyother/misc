#!/bin/bash

#Making Gifs

echo "Name of Gif (w/o extension)"
read name

#resize images to 25% orginal
for i in $( ls *.jpg); do convert -resize 25% $i re_$i.jpg

#make the gif
convert -delay 15 -loop 0 re*.jpg $name.gif

viewnoir $name.gif
