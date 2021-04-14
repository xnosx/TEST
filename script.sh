#!/bin/bash
echo "My Public IP is:"
dig +short myip.opendns.com @resolver1.opendns.com
host myip.opendns.com resolver1.opendns.com

# Check conectivity to Router
FILE=log.log
TARGET=192.168.43.1

touch $FILE
while true;
  do
	  DATE=$(date '+%d/%m/%Y %H:%M:%S')
            ping -c 1 $TARGET &> /dev/null
            if [[ $? -ne 0 ]]; then
              echo "UNREACHABLE "$DATE >> $FILE
            else
              echo "REACHABLE "$DATE
            fi
              sleep 5
done
