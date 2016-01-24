#!/bin/bash

PWD=`pwd`
IMGDIR="$PWD/data/images"
START="$IMGDIR/*"

echo "looking at images in $START ..."
echo "deleting small and grayscale images ..."

for IMG in $START/*.*
do
  # don't keep small images, usually some logo or bottom bar
  # don't keep grayscale image (usually a layer we don't need)
  # don't keep "sommaire" button images that have a dimentsion of 117x296
  # DOC: http://www.imagemagick.org/script/escape.php
  
  if [ `identify -format %h $IMG` -le 100 -o `identify -format %w $IMG` -le 100 -o `identify -format %[colorspace] $IMG` == "Gray" -o `identify -format %hx%w $IMG` == "117x296" ]
  then
    rm -f "$IMG"
  fi
done

echo "convert and delete PPM images ..."
for F in $START/*.ppm
do
  test -f "$F" && mogrify -format jpg "$F"
  test -f "$F" && rm -f "$F"
done
