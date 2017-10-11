#!/bin/sh

find / -name $1 | cut -b2- | tr '/' '\n'
