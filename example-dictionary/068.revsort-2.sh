#!/bin/sh


tmpfile="sort.lst"

if [ ! -f "$1" ]; then
  echo "NO FILE"
  exit 1
fi

rev "$1" | sort | rev > $tmpfile

./report.sh $tmpfile

rm -f $tmpfile


