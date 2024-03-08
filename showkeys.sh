#!/bin/bash

while [ : ]; do
    /usr/bin/screenkey --geometry 600x800+1860+0 -s small --opacity 0.2
    pid=$!
    sleep 10
    kill $pid
done
