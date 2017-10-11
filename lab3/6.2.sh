#!/bin/sh

echo "Find all lines containing numbers:\n"
grep [0-9] labsheet-03-utils.ascii

echo "\nFind all lines containing a sequence of at least two digits:\n"
grep "[0-9]\{2\}" labsheet-03-utils.ascii
