#!/bin/sh

[ "$#" -eq 0 ] &&
{ echo "You must pass in at least one argument and no more than 2."; exit 1; }

[ "$#" -gt 2 ] &&
{ echo "You passed in to many arguments. Try again with either 1 or 2 arguments"; exit 1; }

[ "$#" -eq 1 ] &&
end=$(($1 + 1))

[ "$#" -eq 2 ] &&
{ start=$1 ; end=$(($2 + 1)); }

start=${start:=1}

while [ $start -lt $end ]
do
    echo $start
    start=$(($start + 1))
done
