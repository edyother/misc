#!/bin/bash

clear
echo "Text?"
read T
echo "Link?"
read L

echo "" >> Links.txt
echo $T >> Links.txt
echo '<a href="'"$L"'">'$T'</a>' >> Links.txt
