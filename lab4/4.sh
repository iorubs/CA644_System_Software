#!/bin/sh

echo "hello there" | sed -r 's/\w*/(&)/1'
