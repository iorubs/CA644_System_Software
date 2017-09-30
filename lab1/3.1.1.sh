#!/bin/sh

file=$1 &&
test "$2" = "-d" &&
header=date ||
header="" &&
test "$header" = "" &&
shift ||
shift 2 &&
{ $header; exec $*; } > $file
