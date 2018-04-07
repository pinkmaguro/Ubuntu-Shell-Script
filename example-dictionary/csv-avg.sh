#!/bin/sh

if [ ! -f "$1" ]; then
  echo "NO FILE : $1" >&2
  exit 1
fi

#확장자를 제외한 파일명 얻기 
filename=${1%.*}

echo $filename

awk -F, '{sum += $3} END {print sum / NR}' "$1" > ${filename}.avg 
