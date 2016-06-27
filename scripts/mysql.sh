#!/bin/bash

echo "###########################################"
echo "#"
echo "# Installing MySQL..."
echo "#"
echo "###########################################"

DB_PASSWORD="123456"
CONFIG_PROVISION_PATH="/temp/config"



apt-get install -y debconf-utils > /dev/null

# echo "mysql-server mysql-server/root_password password $DB_PASSWORD" | debconf-set-selections
# echo "mysql-server mysql-server/root_password_again password $DB_PASSWORD" | debconf-set-selections

# apt-get install -y mysql-server

export DEBIAN_FRONTEND="noninteractive"

# sudo debconf-set-selections <<< "mysql-server mysql-server/root_password password $DB_PASSWORD"
# sudo debconf-set-selections <<< "mysql-server mysql-server/root_password_again password $DB_PASSWORD"






debconf-set-selections <<< "mysql-server mysql-server/root_password password $DB_PASSWORD"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password $DB_PASSWORD"
sudo apt-get update
sudo apt-get install -y mysql-server
