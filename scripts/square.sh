#!/bin/bash

# extract images from a PDF file using the pdfimages program
# http://www.imagemagick.org/discourse-server/viewtopic.php?t=28283

PWD=`pwd`
IMGDIR="$PWD/data/images"

for IMG in $IMGDIR/*/*.jpg
do
  if [ `identify -format %h $IMG` -ne `identify -format %w $IMG` ]
  then
    DD=`identify -format "%[fx:min(w,h)]" $IMG`
    convert $IMG -gravity center -crop ${DD}x${DD}+0+0 +repage $IMG
  fi
done
