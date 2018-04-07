#!/bin/sh

csvfile="data.csv"

if [ -z $1 ]; then
  echo "Enter ID." >&2
  exit 1
fi

if [ ! -f $csvfile ]; then
  echo "NO CSV: $csvfile" >&2
  exit 1
fi

while read line
do
  id=$(echo $line | cut -f 1 -d ',')
  name=$(echo $line | cut -f 2 -d ',')
  score=$(echo $line | cut -f 3 -d ',')

  if [ "$1" = "$id" ]; then
    echo "$name"
  fi
  echo $1
  echo $id
done < $csvfile
  
     
