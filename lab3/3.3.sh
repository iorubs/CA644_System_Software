#!/bin/sh

echo "Largest regular file in or under your home directory:" &&
find ~/ -type f | xargs du -s | sort -k1 -r | { read line; echo $line; }
