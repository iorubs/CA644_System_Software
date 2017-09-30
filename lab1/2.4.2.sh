#!/bin/sh

test -z "$1" && 
{ echo "Usage: sh 2.4.2.sh /file/path"; exit 1; }

test -f $1 &&
echo "Found file with name: $1!" ||
echo "Could not find file with name: $1!"
