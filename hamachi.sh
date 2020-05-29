#!/bin/bash
TIMESTAMP=$(date +%s)
clear; echo -e "Installing hamachi"
sudo dpkg -i deb/logmein-hamachi_2.1.0.198-1_armhf.deb
sudo hamachi login
sudo hamachi attach hackberry@post.cz
sudo hamachi set-nick "hackberry$TIMESTAMP"
