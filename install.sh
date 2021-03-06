#!/bin/bash
PWD=$(pwd)
TIMESTAMP=$(date +%s)

clear; echo -e "Updating packages \n"
sudo apt update
clear; echo -e "Installing Apache2 \n"
sudo apt install apache2
clear; echo -e "Installing php7.1 \n"
sudo apt install php7.1 php7.1-mysql
clear; echo -e "Installing libapache2-mod-php7.1 \n"
sudo apt install libapache2-mod-php7.1;sudo a2enmod rewrite
clear; echo -e "Installing composer \n"
sudo apt install composer
clear; echo -e "Installing mysql server \n"
sudo apt install mariadb-common mariadb-server mariadb-client
clear; echo -e "Setting up mysql server \n"
echo "*** IMPORTANT: when installation ask you set root password as 'toor' ***"
sudo mysql_secure_installation
clear; echo -e "Setting up database user \n"
sudo /usr/bin/mysql --defaults-file=/etc/mysql/debian.cnf < templates/database-setup.sql
clear; echo -e "Testing apache. 'It works' should appeare below \n";
sudo chmod 777 /var/www/html -R; rm /var/www/html/index.html; cp templates/test.php /var/www/html/index.php; sudo service apache2 start; sudo service mysql start; curl localhost; sleep 2
clear; echo -e "Installing git \n"
sudo apt install git
clear; echo -e "Installing network-manager \n"
sudo apt install network-manager
clear; echo -e "Installing links \n"
sudo apt install links
clear; echo -e "Installing gammu \n"
sudo apt install gammu gammu-smsd
clear; echo -e "Installing aircrack-ng \n"
sudo apt install aircrack-ng
clear; echo -e "Installing htop \n"
sudo apt install htop
clear; echo -e "Installing nmap \n"
sudo apt install nmap
clear; echo -e "Installing FTP \n"
sudo apt install vsftpd
clear; echo -e "Disabling dhcpd \n"
sudo systemctl disable dhcpcd
sudo systemctl stop dhcpcd
sudo apt purge openresolv dhcpcd5
clear; echo -e "Making www-data user sudo \n"
sudo cp templates/sudoers /etc/sudoers
#running script for hackberry cloning
source hackberry.sh

sudo reboot now
