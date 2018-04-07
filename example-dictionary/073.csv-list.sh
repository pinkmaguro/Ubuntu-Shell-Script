#!/bin/sh

filecheck()
{
  if [ ! -f "$1" ]; then
    echo "ERRO: File $1 does not exist. " >&2
    exit 1;
  fi
}

csvfile="data.csv"
idlistfile="$1"

filecheck "$csvfile"

filecheck "$idlistfile"

while IFS=, read id name score
do
  grep -xq "$id" "$idlistfile"
  if [ $? -eq 0 ]; then
    echo $name
  fi
done < "$csvfile"
