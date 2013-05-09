#!/bin/bash
#init script for molecular absorption spectroscopy lab

#init Script creates the initial environment for the molecular absorption 
#spectroscopy lab, the script installs the server side dependencies of the lab,
#runs the makefile, creates the build directory and copies the build
#folder to /var/www
#Mention all the server-side dependencies of the lab in
#dependencies.txt

#Usage of the Script 

#To use init.sh, run the command
#sh scripts/init.sh scripts/dependencies.txt 
#init script takes dependencies.txt as an argument and installs the
#packages mentioned in the dependencies.txt file. 

#update the system packages
apt-get update

#$1 is the shell variable for command-line argument. 
FILENAME=$1

#reads the file given as an argument to the script line by line and
#installs the packages
cat $FILENAME | while read LINE
do
	echo $LINE
	apt-get install -y $LINE
done

#changes directory to run the make file
cd ./src/
make all
cd ..

#copies the build folder to localhost
cp -r build/ /var/www

