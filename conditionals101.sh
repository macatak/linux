#!/bin/bash

# conditionals
: '
format
if cmd
then
  do something
else
  do something else
fi
'

if cd /tmp
then
  echo 'listing of /tmp'
  ls -l
fi

printf '\n\n'

if ls | grep pdf
then
  echo 'PDFs found'
else
  echo 'no PDFs found'
fi
