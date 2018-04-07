#!/bin/sh

logfile="access_log"

(exec ./checkfile.sh $logfile)


awk '$(NF-1)==404 {print $7}' "$logfile" > "${logfile}.404"
