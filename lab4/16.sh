#!/bin/sh

netstat -rn | sed -rn 's/^[.0]+\s*([\.*[0-9]*]*).*/\1/p' | xargs ping -c 1 -t 1
