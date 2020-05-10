#!/bin/bash

clear; echo -e "Updating packages \n"
#sudo apt update
clear; echo -e "Installing Apache2 \n"
#sudo apt install apache2
clear; echo -e "Installing php7.1 \n"
#sudo apt install php7.1
clear; echo -e "Installing libapache2-mod-php7.1 \n"
#sudo apt install libapache2-mod-php7.1;sudo a2enmod rewrite
clear; echo -e "Installing composer \n"
#sudo apt install composer
clear; echo -e "Installing mysql server \n"
#sudo apt install mariadb-common mariadb-server mariadb-client
clear; echo -e "Setting up mysql server \n"
echo "IMPORTANT: when installation ask you set root password as toor"
#sudo mysql_secure_installation
clear; echo -e "Setting up database user \n"
#sudo mysql -u root -p < templates/user-setup.sql
clear; echo -e "Testing apache. 'It works' should appeare \n";
#sudo chmod 777 /var/www/html -R; rm /var/www/html/index.html; cp templates/test.php /var/www/html/index.php; sudo service apache2 start; sudo service mysql start; curl localhost; sleep 2
clear; echo -e "Setting apache default settings"
#sudo cp templates/000-default.conf /etc/apache2/sites-available/000-default.conf
#sudo service apache2 restart
clear; echo -e "Installing git \n"
#sudo apt install git
clear; echo -e "Installing network-manager \n"
#sudo apt install network-manager
clear; echo -e "Installing links \n"
#sudo apt install links
clear; echo -e "Installing gammu \n"
#sudo apt install gammu gammu-smsd
clear; echo -e "Installing aircrack-ng \n"
#sudo apt install aircrack-ng
clear; echo -e "Installing htop \n"
#sudo apt install htop
clear; echo -e "Installing nmap \n"
#sudo apt install nmap
clear; echo -e "Downloading and installing hackberry webadmin"
#rm /var/www/html/index.php
#mkdir tmp; cd tmp; git clone https://github.com/hackberrypi-webgui/public.git; cd public;
#cp * /var/www/html/ -R; mkdir /var/www/html/log; mkdir /var/www/html/temp; chmod 777 /var/www/html/log /var/www/html/temp -R

service --status-all


