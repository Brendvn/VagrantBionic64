# VagrantBionic64

## To be installed
	- Bionic64
	- Nginx
	- Php7.2
	- 10.2.20-MariaDB

1. Install vagrant
	- `sudo apt install virtualbox`
	- `sudo apt install vagrant`

2. In directory you want to be
	- `git clone {{https://xxxxx}}`
	- `git vagrant up`

3. After installation (Vagrant up)
	- `vagrant ssh`
	- `sudo apt-get install mariadb-server mariadb-client -y`
	- `mysql_secure_installation`
	- `sudo mysql`

	- {{password}} = xxx
	- `mysql -u root -p`
	- `GRANT ALL PRIVILEGES ON *.* TO root@'%' IDENTIFIED BY '{{password}}' WITH GRANT OPTION;`
	- `FLUSH PRIVILEGES;`

4. Add bind-address to mysql.cnf file
	- run `ifconfig`
	- Copy the inet ip and replace in {{inet ip}}
	- `cd /etc/mysql/`
	- `sudo vi my.cnf`

- Add These settings to the file
 	- bind-address            = localhost
 	- bind-address            = {{inet ip}}

	- `sudo service mysql restart`

### IP's and ports on host
	- URL	http://localhost:8081/
	- MYSQL	localhost:33061


