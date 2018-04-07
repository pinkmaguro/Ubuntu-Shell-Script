#!/bin/sh

if [ ! -f "$1" ]; then
  echo "NO FILE $1"
fi

tmpfile="hash.txt"
:> $tmpfile

IF='
'

while read -r line
do
  echo -n "$line" | md5sum | awk '{print $1}' >> $tmpfile
done < $1

paste -d-- $1 $tmpfile
