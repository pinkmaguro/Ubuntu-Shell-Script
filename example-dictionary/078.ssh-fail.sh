#!/bin/sh

securelog="./sample-sshd"

pattern="^.*sshd\[.*\].*Failed password for.*from \(.*\) port .*"

sed -n "s/$pattern/\1/p" $securelog | sort | uniq -c | sort -nr
