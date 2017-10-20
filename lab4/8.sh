#!/bin/sh

seq 1000 | sed -n 'p;n' | sed -e '/[24680]/! d'
