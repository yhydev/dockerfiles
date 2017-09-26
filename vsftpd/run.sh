#!/bin/sh 


if [ ! -f install ];
then

	apt-get update
	apt-get install -y vsftpd

	mkdir -p /var/run/vsftpd/empty
	sed -i 's/#write_enable/write_enable/' /etc/vsftpd.conf
	useradd -m -s /bin/bash vsftpd
	echo vsftpd:vsftpdpasswd |chpasswd 


	apt-get install -y supervisor
	echo  "[program:vsftpd]\ncommand=vsftpd" > /etc/supervisor/conf.d/vsftpd.conf
	sudo touch /var/run/supervisor.sock
	sudo chmod 777 /var/run/supervisor.sock


	touch install




fi;
service supervisor start
