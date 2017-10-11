#!/bin/sh

find /usr/bin /usr/sbin -maxdepth 1 -type f | sort -t / -k 4
