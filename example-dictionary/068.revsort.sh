#!/bin/sh

tmpfile="sort.lst"

if [ ! -f "$1" ]; then
  echo "파일을 지정하세요." >&2
  exit 1;
fi

rev "$1" | sort | rev > $tmpfile

./report.sh $tmpfile

rm -f $tmpfile
