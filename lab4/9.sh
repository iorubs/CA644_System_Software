#!/bin/sh

seq 1000 | sed -re '/(^.).*\1$/! d'
