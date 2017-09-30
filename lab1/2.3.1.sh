#!/bin/sh

# Drop all line that don't contain the word 'root'
grep root < /etc/passwd
