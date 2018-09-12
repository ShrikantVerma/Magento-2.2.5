#!/bin/bash
sudo apt-get update && echo 'y' | sudo apt-get upgrade && echo 'y'
apt-get install curl
curl https://repo.skype.com/data/SKYPE-GPG-KEY | sudo apt-key add -
echo "deb https://repo.skype.com/deb stable main" | sudo tee /etc/apt/sources.list.d/skypeforlinux.list
sudo apt update && echo 'y'
sudo apt install skypeforlinux
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt-get update 
sudo apt-get install google-chrome-stable
apt-get install filezilla
apt-get install apache2
apt-get install mysql-server
apt-get install php7.0 php7.0-curl php7.0-gmp php7.0-mbstring php7.0-phpdbg php7.0-sqlite3 php7.0-zip php7.0-bcmath php7.0-dba php7.0-imap php7.0-mcrypt php7.0-pspell php7.0-sybase php7.0-bz2 php7.0-dev php7.0-interbase php7.0-mysql php7.0-readline php7.0-tidy php7.0-cgi php7.0-enchant php7.0-intl php7.0-odbc php7.0-recode php7.0-xml php7.0-cli php7.0-fpm php7.0-json php7.0-opcache php7.0-snmp php7.0-xmlrpc php7.0-common php7.0-gd php7.0-ldap php7.0-pgsql php7.0-soap php7.0-xsl
apt-get install phpmyadmin libapache2-mod-php7.0
a2enmod rewrite
service apache2 restart
apt-get autoremove
apt-get autoclean
echo "your system is ready enjoy your work"
