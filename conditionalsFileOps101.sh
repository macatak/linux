#!/bin/bash

: '
conditional file checks
-d directory exists
-e file exists
-r file exists and is readable
-w file exists and is writable
-x- file exists and is executable
'

echo "enter a file to search for"
read searchFile
echo "File search for: $searchFile"

if [[ -e $searchFile ]]
then
  echo "$searchFile exists"
  # check to see if its executable
  if [[ -x $searchFile ]]
  then
    echo "$searchFile is executable"
  else
    echo "$searchFile is not executable"
  fi
  # check to see if its writeable
  if [[ -w $searchFile ]]
  then
    echo "$searchFile is writeable"
  else
    echo "$searchFile is not writeable"
  fi
  # check to see if its readable
  if [[ -w $searchFile ]]
  then
    echo "$searchFile is readable"
  else
    echo "$searchFile is not readable"
  fi
else
  echo "$searchFile does not exist"
fi
  
    
