#!/bin/bash

# Script for recording LPs

clear
echo "Artist Name? (no spaces)"
read art
if [ -d $art ]; then 
	cd $art
	echo "Album Name? (no spaces)"
	read alb
	mkdir $alb
	cd $alb
	echo "Side?"
	read s1
	rec -r 48000 -b 16 -c 2 -s $art-$alb-$s1.wav silence 1 0.50 0.1% 1 00:10 0.1%
	echo "Side?"
	read s2
	rec -r 48000 -b 16 -c 2 -s $art-$alb-$s2.wav silence 1 0.50 0.1% 1 00:10 0.1%
else
	mkdir $art
	cd $art
	echo "Album Name? (no spaces)"
	read alb
	mkdir $alb
	cd $alb
	echo "Side?"
	read s1
	rec -r 48000 -b 16 -c 2 -s $art-$alb-$s1.wav silence 1 0.50 0.1% 1 00:10 0.1%
	echo "Side?"
	read s2
	rec -r 48000 -b 16 -c 2 -s $art-$alb-$s2.wav silence 1 0.50 0.1% 1 00:10 0.1%
fi

sox $art-$alb-$s1.wav $art-$alb-$s2.wav $alb.wav norm
cd ../..
