#!/bin/sh

echo "du -s /home print"
du -s /home

echo "du -s /tmp print"
du -s /tmp


echo "du tmp with cut 1"
du -s /tmp | cut -f 1

echo "du tmp with cut 2"
du -s /tmp | cut -f 2
