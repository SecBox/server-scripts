#!/bin/bash
echo " "
echo " "
echo "**************************************"
echo "*                                    *"
echo "*    Welcome - Configure your home   *"
echo "*                                    *"
echo "**************************************"
echo " "
echo " "
echo "What you like to do?"
echo " "
echo "1) Server enviroment"
echo "2) Deploy"
echo "3) Update from git"
echo "4) Everything automatic"
echo "5) Salir"
echo "---> "
select option in "1" "2" "3" "4"; do
    case $option in
        1 ) ./server.sh;break;;
		2 ) ./deploy.sh;break;;
		3 ) ./pull.sh;break;;
		4 ) ./server.sh;./deploy.sh;./pull.sh;break;;
        5 ) echo "Bye :)";break;;
    esac
done