#!/bin/bash

log_file="/tmp/mylog"
rm $log_file
mkdir build
cd build
cmake -DITK_WRAP_PYTHON:BOOL=ON -DITK_LEGACY_SILENT:BOOL=ON -DTIME_LOG_FILE:FILEPATH=$log_file ..
chrt -i 0 /usr/bin/time -v -a -o $log_file make -j24
