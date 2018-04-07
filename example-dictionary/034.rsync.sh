#!/bin/sh

log_dir="mylog"
backup_dir="mylog2"

rsync -av "$log_dir" "$backup_dir"

