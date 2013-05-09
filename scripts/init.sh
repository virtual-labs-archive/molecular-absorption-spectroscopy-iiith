#!/bin/bash

# init script for the molecular absorption spectroscopy lab
 
#init installs dependencies, runs the make file and creates the build
#dependecies.txt is the file where all the packages required to run
# the labs should be entered
#it automatically runs the make file, builds the lab and copies the lab
#to /var/www

#usage

#init.sh takes the dependecies.txt as an input and installs all the
#required software
#should be invoked using the following command:
#sh scripts/init.sh scripts/dependencies.txt

#update the system packages
apt-get update

#$1 is the shell variable for command-line argument
FILENAME=$1

#reads the given file as an argument to script line by line and install packages
cat $FILENAME | while read LINE
do
apt-get install -y $LINE
done

#changes directory  to run the makefile
cd src
make all
cd ..

#copies build to localhost
cp -r build/ /var/www/


