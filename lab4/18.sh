#!/bin/sh

seq 10 | sed -ne 'h; n; p; g; p;'

# could also be done with
# seq 10 | sed -r 'N;s/(.*)\n(.*)/\2\n\1/'
