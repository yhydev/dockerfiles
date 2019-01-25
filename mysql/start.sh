#!/bin/sh

docker rm -f  mysql
rm -rf /root/mysql-conf /root/mysql-data
#mkdir /root/mysql-conf /root/mysql-data
#chmod 777 -R /root/mysql-conf /root/mysql-data

docker run --name mysql  -p 3306:3306 -v /etc/localtime:/etc/localtime -v /root/mysql-conf:/etc/mysql/conf.d -v /root/mysql-data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=123456hy -d  daocloud.io/library/mysql
