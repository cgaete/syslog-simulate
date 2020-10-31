
#!/bin/bash

# How long to wait in between sending messages.
SLEEP_SECS=1


#nmap -sL -n 10.10.64.0/27 | awk '/Nmap scan report/{print $NF}'

# How many message to send at a time.
COUNT=1

awk '{print $1}' < ip.csv | while read ip
do
        for i in $(seq 1 $COUNT)
        do

                echo "<134> 1,'date +%B-%d-%Y-%T',_nohostname,NAT444,D,$ip,43266,132.157.130.118,31796,190.98.160.59,443,6" # | nc$
        done
        sleep $SLEEP_SECS
done
