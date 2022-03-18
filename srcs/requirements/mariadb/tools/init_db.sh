#!bin/sh

if [ ! -f "var/lib/mysql/ib_buffer_pool" ];
then

	/etc/init.d/mariadb setup 
	rc-service mariadb start

	echo "CREATE USER 'LSDAY'@'localhost';" |  mysql -u root
	echo "GRANT ALL PRIVILEGES ON *.* TO 'LSDAY'@'localhost';" | mysql -u root
	echo "FLUSH PRIVILEGES; " | mysql -u root

	mysql -u root -e "ALTER USER 'LSDAY'@'localhost';"
fi


sed -i 's/skip-networking/# skip-networking/g' /etc/my.cnf.d/mariadb-server.cnf
sed -i "s|.*bind-adress\s*=.*|bind-adress=0.0.0.0|g" /etc/my.cnf.d/mariadb-server.cnf

rc-service mariadb restart
rc-service mariadb stop

exec /usr/bin/mysqld --user=mysql --console

 

