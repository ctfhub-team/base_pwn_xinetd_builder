#!/bin/sh

ls src/*.c 2>&1 1>/dev/null
if [ $? = 0 ]; then
    echo "Found [source].c"
    make clean
    make
fi