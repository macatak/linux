#!/bin/sh

# simple ping test, wanted to log all the times the internet dropped
# dedicated to comcast :P

# start time
START_DATE="$( date +%d%b%y-%T )"
echo "started - $START_DATE"

# infinite while loop
while : 
do
  # ping -q -c5 8.8.8.8 > /dev/null
  DATE="$( date +%d%b%y-%T )"
  # check for pass 
  # if [ $? -eq 0 ]
  # check for fail
  wget -q https://github.com/macatak/random/blob/master/books/README.md > /dev/null
  if [ $? -ne 0 ]
  then
	echo "connection fail : $DATE"
  fi
  rm -f README.md 
  sleep 30
done 


