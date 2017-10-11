#!/bin/sh

find ~ -type f > ~/files.txt

cat ~/files.txt | tr '\n' '\0' | xargs -0 du -s
