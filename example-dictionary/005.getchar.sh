#!/bin/sh

printf "Type Your Ansert [y/n]: "

# save current terminal configurations
tty_state=$(stty -g)

stty raw

char=$(dd bs=1 count=1 2> /dev/null)

stty "$tty_state"

echo

case "$char" in
    [yY])
      echo "Input: YES"
      ;;  
    [nN])
      echo "Input: NO"
      ;;
    *)
      echo "Not a right answer"
      ;;
esac
