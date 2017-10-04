#!/bin/sh

[ "$#" -gt 2 ] &&
{ echo "You passed in to many arguments. Max number of arguments is 2"; exit 1; }

[ "$#" -eq 1 ] &&
end=$(($1 + 1))

[ "$#" -eq 2 ] &&
{ start=$1 ; end=$(($2 + 1)); }

start=${start:=1}
end=${end:=2}

while [ $start -lt $end ]
do
    echo $start
    start=$(($start + 1))


    [ "$#" -eq 0 ] &&
    end=$(($start + 1))
done
