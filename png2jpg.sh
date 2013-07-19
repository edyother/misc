#!/bin/bash

# batch converts png files to jpg

for img in *.png; do
	filename=${img%.*}
	convert "$filename.png" "$filename.jpg"
done
