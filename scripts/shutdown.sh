#!/bin/bash
#shutdown script for Molecular absoption spectroscopy lab

# shutdown script stops all the services on the container required to
# run the lab for the safe dissembling of the lab

# Usage of the Script 

# To use shutdown.sh, run the command
# sh scripts/shutdown.sh

# stops the Apache service
service apache2 stop
