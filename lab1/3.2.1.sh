#!/bin/bash

while read line
do
   echo "$line"
   echo "$line" >> $1
done
