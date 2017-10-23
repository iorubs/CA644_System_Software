#!/bin/sed -rf

# Usage: ./19.sed < input_file
N;s/^\n[a-zA-Z]+\s?.*/\n# -------------------------------------------------------\n# function:&/;P;D
