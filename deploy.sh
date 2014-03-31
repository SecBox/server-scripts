#!/bin/bash
echo " "
echo " "
echo "**************************************"
echo "*                                    *"
echo "*              Deploying             *"
echo "*                                    *"
echo "**************************************"
echo " "
sudo mkdir -p /var/www/secbox.co/ /var/www/secbox.co/logs/
echo "..."
echo " "
cd /var/www/secbox.co/
echo "..."
echo " "
sudo git clone https://github.com/SecBox/site public_html
echo "..."
echo " "
sudo chown -R www-data:www-data /var/www/secbox.co/
echo "..."
echo " "
sudo mv secbox.co /etc/nginx/sites-available/
echo "..."
echo " "
sudo ln -s /etc/nginx/sites-available/secbox.co /etc/nginx/sites-enabled/
echo "..."
echo " "
sudo nginx -t
echo "..."
echo " "
sudo service nginx reload
echo "== OK =="
./configure.sh