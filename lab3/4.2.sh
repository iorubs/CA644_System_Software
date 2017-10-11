#!/bin/sh

ps aux --no-headers | cut -d' ' -f 1 | uniq -c | sort -k 2 -r
