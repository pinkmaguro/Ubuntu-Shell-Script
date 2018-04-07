#!/bin/sh

checkfile() {
  if [ ! -f $1 ]; then
    echo "No File: $1" >&2
    exit 1
  fi
}

checkfile "$1"
