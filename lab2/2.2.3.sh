#!/bin/sh

for f
do
    echo "The size of $(du -s $f | cut -f 2) is $(du -s $f | cut -f 1)  kilobytes" 
done
