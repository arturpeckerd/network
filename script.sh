#!/bin/bash

sleep 5
cd /home/carlos/Projects/github

while :
do
    echo Reading the public ip address and save it in log file
    curl https://checkmyip.com/ | grep dsl > log
    sleep 43200
done
