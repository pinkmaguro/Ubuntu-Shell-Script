#!/bin/sh

filecheck() {
  if [ ! -f $1 ]; then
    echo "NO FILE : $1" >&2
  fi
}

filecheck $1

awk '{print $4,$5,$1}' "$1" 
