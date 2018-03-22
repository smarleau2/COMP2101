#!/bin/bash
# This is a script that will Welcome you to my computer

export MYNAME="Steve"
mytitle="Master"
today=$(date +%A)
hostname=$(hostname)
echo "Welcome to planet $hostname, $mytitle $MYNAME!"
echo "Today is $today."
