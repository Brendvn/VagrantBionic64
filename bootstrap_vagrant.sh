#!/usr/bin/env bash
echo "Provisioning machine"
export DEBIAN_FRONTEND=noninteractive
echo 'LC_ALL="en_ZA.UTF-8"'  >  /etc/default/locale
# generate the za locale
locale-gen en_ZA.UTF-8
export LANGUAGE=en_ZA.UTF-8
export LANG=en_ZA.UTF-8
dpkg-reconfigure locales

# and timezone
echo 'Africa/Johannesburg'  >  /etc/timezone
dpkg-reconfigure -f noninteractive tzdata


# Update
sudo apt-get update -y
sudo apt-get upgrade -y

# Nginx
echo "Installing Nginx"
	apt-get install nginx -y
	apt-get update

#PHP
echo "Installing PHP"
	sudo apt-get install php7.2 php7.2-common php7.2-cli php7.2-fpm -y
	php -v
# php-dev php-zip php-curl php-xmlrpc php-gd php-mysql php-mbstring php-xml -y > /dev/null
	sudo apt-get upgrade

echo "Config PHP Timezone & FPM Fix Path"
echo "date.timezone = UTC" >> /etc/php/7.2/fpm/php.ini
echo "date.timezone = UTC" >> /etc/php/7.2/cli/php.ini
echo "cgi.fix_pathinfo=0" >> /etc/php/7.2/fpm/php.ini


echo "Configuring Nginx"
	sudo cp /var/www/provision/nginx_vhost /etc/nginx/sites-available/nginx_vhost
	sudo ln -s /etc/nginx/sites-available/nginx_vhost /etc/nginx/sites-enabled/    
	sudo rm -rf /etc/nginx/sites-available/default
	sudo rm -rf /etc/nginx/sites-enabled/default
    
	sudo service nginx restart > /dev/null

echo "Preparing Mysql"
	sudo apt-get install mysql-server php7.2-mysql -y



echo "Finished provisioning."
