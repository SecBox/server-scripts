#!/bin/bash
echo " "
echo " "
echo "**************************************"
echo "*                                    *"
echo "*        Server enviroment           *"
echo "*                                    *"
echo "**************************************"
echo "== Lets install dependencies =="
sudo apt-get update
echo "== Git =="
sudo apt-get install git
sudo apt-get purge apache2*
sudo apt-get autoremove
echo "== nginx =="
sudo apt-get install nginx
sudo service nginx start
echo "== OK =="
./configure.sh