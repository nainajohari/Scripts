#!/bin/bash
SPACE=$(df / | grep / | awk '{ print $5}' | sed 's/%//g')
THRESHOLD=80

if [ "$SPACE" -gt "$THRESHOLD" ] ; then
    mail -s 'Disk Space Alert' naina.johari379@webkul.com << EOF
Your root partition remaining free space is critically low. Used: $SPACE%
EOF
fi
