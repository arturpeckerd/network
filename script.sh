#!/bin/bash
sleep 5
cd /home/root/network

while :
do
    HM=`date +%H%M`
    if [ $HM == 1220 ]; then
        echo Reading the public ip address and save it in log file
        curl -L ping.eu/ | grep "Your IP" > log
        git add log
        git commit -m "updating ip"
        git push -u origin master
    fi
    sleep 55
done
