#!/bin/bash

while [ : ]; do
    /usr/bin/screenkey --geometry 400x800+2060+100 -s small --opacity 0.2
    pid=$!
    sleep 10
    kill $pid
done
