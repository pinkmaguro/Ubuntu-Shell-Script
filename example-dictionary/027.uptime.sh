#!/bin/sh

uptimelog="uptime.log"

:> $uptimelog

for i in 1 2 3 4 5 6
do
  uptime >> $uptimelog
  sleep 10
done

