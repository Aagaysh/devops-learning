#!/bin/bash

set -e   # stop script if any command fails

MESSAGE=$1
LOGFILE="deploy.log"

if [ -z "$MESSAGE" ]; then
  echo "Usage: ./deploy.sh \"Hello world\""
  exit 1
fi

echo "Starting deployment..." | tee -a $LOGFILE

sudo service nginx start | tee -a $LOGFILE

echo "<h1>$MESSAGE</h1>" | sudo tee /var/www/html/index.html | tee -a $LOGFILE

echo "Deployment successful!" | tee -a $LOGFILE
