#!/bin/sh

arg=$(echo "$1" | sed -re '/^-[0-9]+$/! d' -e 's/-//g')
test -n "$arg" &&
    cut=$arg

cut=${cut:=10}

sed -n 1,${cut}p
