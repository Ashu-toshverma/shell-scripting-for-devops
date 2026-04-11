#!/bin/bash

<<Comment
1 is qrgument which is folder name
2 is start range
3 is end range
Comment

for((num=$2; num<=$3; num++))
do
     mkdir "$1$num"
done     
