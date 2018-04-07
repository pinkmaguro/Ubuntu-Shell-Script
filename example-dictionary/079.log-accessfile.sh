#!/bin/sh

logfile="access_log"

(exec ./checkfile.sh $logfile)

awk '$6=="\"GET" {print $7}' "$logfile" | sort | uniq -c | sort -nr
