#!/bin/bash

## Script for recording 45's

# Enter Artists name
clear
echo "Artist Name (no spaces)?"
read A

# Make directory for all from this artist
mkidir -p "$A"
cd "$A"

# Enter song name on side 1
echo "First Song Name (no spaces)?"
read s1

# record side 1
rec $A-$s1.ogg silence 1 0.50 0.1% 1 00:10 0.1%

# Enter song name on side 2
echo "Second Song Name (no spaces)?"
read s2

# Record side 2
rec $A-$s2.ogg silence 1 0.50 0.1% 1 00:10 0.1%

cd ../..
