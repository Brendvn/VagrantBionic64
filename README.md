# Simple-Vagrant
vagrant

# After installation
sudo mysql_secure_installation

sudo mysql
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '';
GRANT ALL PRIVILEGES ON *.* TO root@"%" IDENTIFIED BY "";
FLUSH PRIVILEGES;

SELECT user,authentication_string,plugin,host FROM mysql.user;
cd /etc/mysql/mysql.conf.d
sudo vi mysql.cnf

# Add to file
bind-address            = localhost
bind-address            = {{ifconfig}}

sudo service mysql restart


