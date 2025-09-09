#!/bin/bash
if [[ -d "$1" ]]; then
 tar -cf log_archive.tar "$1"
 mv log_archive.tar log_archive_$(date +%F_%T).tar
else
 tar -cf log_archive.tar /var/log/
 mv log_archive.tar dir_log_archive_$(date +%F_%T).tar
fi
