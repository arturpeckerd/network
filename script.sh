#!/bin/bash

sleep 5
cd /home/root/network

while :
do
    echo Reading the public ip address and save it in log file
    curl -L ping.eu/ | grep "Your IP" > log
    git add log
    git commit -m "updating ip"
    git push -u origin master
    for i in {1..24}
    do
        sleep 3600
    done
done
