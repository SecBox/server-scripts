#!/bin/bash
echo " "
echo " "
echo "**************************************"
echo "*                                    *"
echo "*          Pull from git             *"
echo "*                                    *"
echo "**************************************"
echo " "
cd /var/www/secbox.co/public_html
echo "..."
echo " "
sudo git pull
echo "== Pulled from Github =="
./configure.sh