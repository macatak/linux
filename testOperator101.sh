#!/bin/bash

: ' test operators
can replace if statements
this...
[[ id $dir }} && ls "$dir"
... is the same as ...
if [[-d $dir ]]
then
  ls "$dir"
fi ' 

echo "enter a directory to search for"
read searchDir


# neither if these work
# ls only runs if searchDir exists
$searchDir && ls

#
$searchDir || echo 'cd failed'
