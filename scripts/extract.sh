#!/bin/bash

# extract images from a PDF file using the pdfimages program

PWD=`pwd`
PDFDIR="$PWD/data/pdfs"
IMGDIR="$PWD/data/images"
SCRIPTDIR="$PWD/scripts"
P2I="$SCRIPTDIR/pdfimages"

START="$PDFDIR/*"

for FILE in $( ls $START.pdf )
do
  DIR=${FILE%.*}
  BASE=$(basename $FILE)
  FILEPREFIX=${BASE%.*}
  echo "extracting images from $BASE ..."
  mkdir -p $IMGDIR/$FILEPREFIX
  $P2I -j "$FILE" "$IMGDIR/$FILEPREFIX/$FILEPREFIX" &>/dev/null
done
