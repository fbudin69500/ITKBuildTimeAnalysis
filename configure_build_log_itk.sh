#!/bin/bash

mkdir build
cd build
cmake -DITK_WRAP_PYTHON:BOOL=ON -DITK_LEGACY_SILENT:BOOL=ON ..
make -j1 > log_times 2>&1
