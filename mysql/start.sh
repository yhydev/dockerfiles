#!/bin/sh

docker run --name mysql -p 3306:3306 -v /etc/localtime:/etc/localtime -v /root/mysql-data:/var/lib/mysql -v /root/mysql-conf/:/etc/mysql -e MYSQL_ROOT_PASSWORD=mysqlpasswd -d  daocloud.io/library/mysql
