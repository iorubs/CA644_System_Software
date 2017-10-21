#!/bin/sh

echo "12 123 45 6" | sed -r 's/(^\s*\S.*$)/& # comment/g'
echo "   " | sed -r 's/(^\s*\S.*$)/& # comment/g'
