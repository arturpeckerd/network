#!/bin/bash

sleep 5
cd /home/root/network

while :
do
    echo Reading the public ip address and save it in log file
    curl -L checkmyip.com/ | grep dsl > log
    git add log
    git commit -m "updating ip"
    git push -u origin master
    sleep 43200
done
