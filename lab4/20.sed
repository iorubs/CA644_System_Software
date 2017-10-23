#!/bin/sed -rf

# Usage: ./20.sed < input_file
N;s/^\n([a-zA-Z]+)\s?.*/\n# -------------------------------------------------------\n# function: \1&/;P;D
