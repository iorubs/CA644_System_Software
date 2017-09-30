#!/bin/sh

# Usage: sh 3.1.2.sh > /dev/null
# or
# Usage: sh 3.1.2.sh 2> /dev/null

sh 2.1.5.sh 3>&2 2>&1 1>&3

