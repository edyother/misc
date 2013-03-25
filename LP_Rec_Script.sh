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
	rec $art-$alb-$s1.ogg silence 1 0.50 0.1% 1 00:10 0.1%
	echo "Side?"
	read s2
	rec $art-$alb-$s2.ogg silence 1 0.50 0.1% 1 00:10 0.1%
else
	mkdir $art
	cd $art
	echo "Album Name? (no spaces)"
	read alb
	mkdir $alb
	cd $alb
	echo "Side?"
	read s1
	rec $art-$alb-$s1.ogg silence 1 0.50 0.1% 1 00:10 0.1%
	echo "Side?"
	read s2
	rec $art-$alb-$s2.ogg silence 1 0.50 0.1% 1 00:10 0.1%
fi

sox -V3 $art-$alb-$s1.ogg $art-$alb-$s2.ogg $alb.ogg norm
cd ../..
