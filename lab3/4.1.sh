#!/bin/sh

ps aux --no-headers | cut -d' ' -f 1 | uniq -c
