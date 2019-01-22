# VagrantBionic64

## To be installed
	- Bionic64
	- Nginx
	- Php7.2
	- Mysql 5.7

1. Install vagrant
	- `sudo apt install virtualbox`
	- `sudo apt install vagrant`

2. In directory you want to be
	- `git clone {{https://xxxxx}}`
	- `git vagrant up`

3. After installation (Vagrant up)
	- `vagrant ssh`
	- `sudo mysql_secure_installation -> follow instructions`

	- `sudo mysql`

	- {{password}} = xxx
	- `ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '{{password}}';`
	- `GRANT ALL PRIVILEGES ON *.* TO root@'%' IDENTIFIED BY '{{password}}';`
	- `FLUSH PRIVILEGES;`

4. Add bind-address to mysql.cnf file
	- run `ifconfig`
	- Copy the inet ip replace in {{inet ip}}
	- `cd /etc/mysql/mysql.conf.d`
	- `sudo vi mysqld.cnf`

- Add These settings to the file
 	bind-address            = localhost
 	bind-address            = {{inet ip}}

	- `sudo service mysql restart`

### IP's and ports on host
	- URL -> http://localhost:8081/
	- MYSQL localhost:33061


