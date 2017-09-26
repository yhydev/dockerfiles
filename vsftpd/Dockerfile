FROM  daocloud.io/ubuntu:14.04
#FROM hub.c.163.com/public/ubuntu:14.04-tools

#COPY localtime /etc/localtime
#COPY install.sh /
COPY run.sh /
#RUN cat /etc/hosts
#RUN echo mirrors.163.com 123.58.190.236 > /etc/hosts
#RUN cat /etc/hosts


RUN echo "deb http://mirrors.163.com/ubuntu/ trusty main restricted universe multiverse\n\
deb http://mirrors.163.com/ubuntu/ trusty-security main restricted universe multiverse\n\
deb http://mirrors.163.com/ubuntu/ trusty-updates main restricted universe multiverse\n\
deb http://mirrors.163.com/ubuntu/ trusty-proposed main restricted universe multiverse\n\
deb http://mirrors.163.com/ubuntu/ trusty-backports main restricted universe multiverse\n\
deb-src http://mirrors.163.com/ubuntu/ trusty main restricted universe multiverse\n\
deb-src http://mirrors.163.com/ubuntu/ trusty-security main restricted universe multiverse\n\
deb-src http://mirrors.163.com/ubuntu/ trusty-updates main restricted universe multiverse\n\
deb-src http://mirrors.163.com/ubuntu/ trusty-proposed main restricted universe multiverse\n\
deb-src http://mirrors.163.com/ubuntu/ trusty-backports main restricted universe multiverse" > /etc/apt/sources.list

RUN rm /etc/localtime
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime


#RUN echo "apt-get update &&\
#apt-get install -y vsftpd &&\
#mkdir -p /var/run/vsftpd/empty &&\
#sed -i 's/#write_enable/write_enable/' /etc/vsftpd.conf &&\
#useradd -m -s /bin/bash vsftpd&&\
#echo vsftpd:vsftpdpasswd |chpasswd &&\
#touch install&&\
#apt-get install -y supervisor &&\
#echo \"[pragram:vsftpd]\ncommand=vsftpd\" > /etc/supervisor/conf.d/vsftpd.conf" > install.sh








#RUN echo "if [ ! -e install ];then sh install.sh;fi; vsftpd" > run.sh


CMD ["sh","run.sh"]
