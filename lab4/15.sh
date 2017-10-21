#!/bin/sh

ifconfig | sed -rn 's/.*dr:([\.*[0-9]*]*).*/\1/p'
