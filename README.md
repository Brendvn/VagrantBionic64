# VagrantBionic64

## To be installed
- Bionic64
- Nginx
- Php7.2
- Mysql 5.7

# After installation
- vagrant ssh
- sudo mysql_secure_installation -> follow instructions

- sudo mysql
- ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '{{password}}';
- GRANT ALL PRIVILEGES ON *.* TO root@'%' IDENTIFIED BY '{{password}}';
- FLUSH PRIVILEGES;

- SELECT user,authentication_string,plugin,host FROM mysql.user;
- cd /etc/mysql/mysql.conf.d
- sudo nano mysql.cnf

# Add to file
- bind-address            = localhost
- bind-address            = {{ifconfig inet ip}}

- sudo service mysql restart


