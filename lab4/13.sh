#!/bin/sh

#assumes input c files live in the current dir or in one of it's sub dirs, so it doesn't find other random c files
find `pwd` -type f -iname "*.c" | sed -re 'p' -e 's/$/.orig/g' | xargs -n 2 sh -c 'cmp -s "$1" "$2" || echo "$1"' --
