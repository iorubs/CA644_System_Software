#!/bin/sh

test -f /etc/passwd
echo $?

test -d /etc/passwd
echo $?

test -s /etc/passwd
echo $?

test ! -s /etc/passwd
echo $?

test -d /var
echo $?
