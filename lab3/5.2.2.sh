#!/bin/sh

while read line
do
    path_str="$path_str/$line"
done

echo $path_str
