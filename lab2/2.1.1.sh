#!/bin/sh

start=$1
end=$(($2 + 1))

while [ $start -lt $end ]
do
    echo $start
    start=$(($start + 1))
done
