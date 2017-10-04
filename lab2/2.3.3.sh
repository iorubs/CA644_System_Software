#!/bin/sh

for arg
do
    which $arg &&
    exit 0
done
