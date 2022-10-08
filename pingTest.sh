#!/bin/sh

# simple ping test, wanted to log all the times the internet dropped
# dedicated to comcast :P

# -q quiet
# -c nb of pings to perform
# infinite while loop
while : 
do
  ping -q -c5 8.8.8.8 > /dev/null
  DATE="$( date +%d%b%y-%T )"
  # check for pass 
  # if [ $? -eq 0 ]
  # check for fail
  if [ $? -ne 0 ]
  then
	echo "ping fail : $DATE"
  fi
done 

sleep 2