#!/bin/bash
# Credit to Otello M Roscioni from Bristol who kindly share his script : https://matsci.org/u/hothello

export LC_NUMERIC="en_US.UTF-8"

set -e

format=300x300 # 960x568 1920x1136

# resize and add transparent backgroung
for file in _light.*.ppm; 
do
    convert $file -resize $format -transparent white  ${file:0:12}.png;
done
for file in _dark.*.ppm; 
do
    convert $file -resize $format -transparent black  ${file:0:11}.png;
done

img2webp -o gif_light.webp  -q 75 -d 22.22 _light*.png

img2webp -o gif_dark.webp  -q 75 -d 22.22 _dark*.png
