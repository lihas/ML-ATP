#!/bin/bash
#sorting
cat $filename | awk 'BEGIN {FS=","} {MT[$1]=$3;}'
