#!/bin/sh

if [ ! -f "$1" ]; then
  echo "NO FILE $1" 
fi


firstline=$(head -n 1 "$1")

case "$fistline" in
  */bin/sh|*bash*)
    mv -v "$1" "${1}.sh"
  *)
    echo "Unknown Type: "$1"
esac

