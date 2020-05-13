#!/bin/bash
sudo cp templates/000-default.conf /etc/apache2/sites-available/000-default.conf
clear; echo -e "Downloading and installing hackberry webadmin"
cd /var/www/ && git clone https://github.com/hackberrypi-webgui/public.git &&
mkdir /var/www/public/log && mkdir /var/www/public/temp && chmod 777 /var/www/public/log /var/www/public/temp -R;
sudo service apache2 restart
sudo service mysql restart
