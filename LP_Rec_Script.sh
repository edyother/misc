#!/bin/bash

# Script for recording LPs

# Enter Artist Name
clear
echo "Artist Name? (no spaces)"
read art

mkdir -p $art
cd $art

# Enter Album Name
echo "Album Name? (no spaces)"
read alb

mkdir -p $alb
cd $alb

# Enter which side is first
echo "Side?"
read s1

# Record side 1
rec $art-$alb-$s1.ogg silence 1 0.50 0.1% 1 00:10 0.1%

# Enter which side is second
echo "Side?"
read s2

# Record side 2
rec $art-$alb-$s2.ogg silence 1 0.50 0.1% 1 00:10 0.1%

# Concatenate and normalize into one file for later editing into individual tracks
sox -V3 $art-$alb-$s1.ogg $art-$alb-$s2.ogg $alb.ogg gain -n -1

cd ../..
