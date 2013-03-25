#!/bin/bash

## Script for recording 45's

clear
echo "Artist Name (no spaces)?"
read fn
if [ -d $fn ]; then
	cd $fn
	echo "First Song Name (no spaces)?"
	read s1
	rec $fn-$s1.ogg silence 1 0.50 0.1% 1 00:10 0.1%
	echo "Second Song Name (no spaces)?"
	read s2
	rec $fn-$s2.ogg silence 1 0.50 0.1% 1 00:10 0.1%
else
	mkdir $fn
	cd $fn
	echo "First Song Name (no spaces)?"
	read s1
	rec $fn-$s1.ogg silence 1 0.50 0.1% 1 00:10 0.1%
	echo "Second Song Name (no spaces)?"
	read s2
	rec $fn-$s2.ogg silence 1 0.50 0.1% 1 00:10 0.1%
fi
cd ../..
