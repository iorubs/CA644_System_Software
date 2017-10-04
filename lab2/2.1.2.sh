#!/bin/sh

[ "$#" -eq 2 ] ||
{ echo "usage: 2.1.2.sh START STOP"; exit 1; }

start=$1
end=$(($2 + 1))

while [ $start -lt $end ]
do
    echo $start
    start=$(($start + 1))
done
