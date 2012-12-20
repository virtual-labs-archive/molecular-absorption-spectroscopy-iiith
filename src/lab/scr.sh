#!/bin/bash


for k in `ls -d exp*`
do

if [ $k != "exp1" ]
  then 
    echo $k
    mv $k/content.html $k/default.html
    cp exp1/content.html $k/content.html
    cp exp1/index.html $k/index.html
fi


done
