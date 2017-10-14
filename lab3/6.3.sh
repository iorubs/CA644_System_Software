#!/bin/sh

grep -ohi "[[:alpha:]]*sort[[:alpha:]]*" labsheet-03-utils.ascii | sort -f | uniq -ci | sort -r
