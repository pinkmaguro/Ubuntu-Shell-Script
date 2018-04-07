#!/bin/sh

filecount=$(find "$1" -maxdepth 1 -type f -print | wc -l)
dircount=$(find "$1" -maxdepth 1 -type d -print | wc -l)

dircount=$(expr $dircount - 1)

echo "Number of files: $filecount"
echo "Number of dir: $dircount"
