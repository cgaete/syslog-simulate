#!/bin/bash

# How long to wait in between sending messages.
SLEEP_SECS=1

# How many message to send at a time.
COUNT=1

while [ 1 ]
do
        for i in $(seq 1 $COUNT)
        do

                echo "<134> 1,`date +%B-%d-%Y-%T`,_nohostname,NAT444,D,10.155.151.228,43266,132.157.130.118,31796,190.98.160.59,443,6" | nc -w1 -u loghost 514
        done
        sleep $SLEEP_SECS
done
