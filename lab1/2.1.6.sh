#!/bin/sh

file=$1 &&
shift &&
exec $* > $file
