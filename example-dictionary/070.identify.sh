#!/bin/sh

if [ ! -f "$1" ]; then
  echo "NO FILE $1" >&2
  exit 1
fi

# read first line from file
firstline=$(head -n 1 "$1")

case "$firstline" in
  */bin/sh|*bash*)
    mv -v "$1" "${1}.sh"
    ;;
  *perl*)
    mv -v "$1" "${1}.pl"
    ;;
  *ruby*)
    mv -v "$1" "${1}.rb"
    ;;
  *)
    echo "Unknown Type: $1"
esac

