#!/bin/bash

LOGFILE="setup.log"

echo "starting setup..." | tee -a $LOGFILE
sudo apt update -y | tee -a $LOGFILE
sudo apt install nginx -y | tee -a $LOGFILE
sudo service nginx start | tee -a $LOGFILE

echo "<h1>Automated DevOps Setup</h1>" | sudo tee /var/www/html/index.html

echo "Setup Complete!" | tee -a $LOGFILE
