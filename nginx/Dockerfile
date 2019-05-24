FROM ubuntu:16.04

RUN apt-get update && \
apt-get install -y curl build-essential zlib1g-dev openssl libssl-dev libpcre3 libpcre3-dev  && \
curl -o nginx.tar.gz http://nginx.org/download/nginx-1.15.8.tar.gz && \
tar xf nginx.tar.gz && \
rm -f nginx.tar.gz && \
cd nginx-1.15.8 && \
./configure --with-http_ssl_module --with-http_realip_module --prefix=/nginx &&\
make && make install &&\
cd .. && rm -rf nginx-1.15.8 


ENV PATH $PATH:/nginx/sbin


CMD ["nginx","-g", "daemon off;"]
