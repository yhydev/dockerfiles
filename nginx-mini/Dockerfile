FROM alpine




WORKDIR /root
#ADD nginx-1.15.8.tar.gz .

ADD http://nginx.org/download/nginx-1.15.8.tar.gz .
RUN tar xf nginx*.tar.gz && rm nginx*.tar.gz

RUN  mv nginx* nginx-src 

WORKDIR nginx-src

RUN apk update && apk add build-base pcre pcre-dev zlib zlib zlib-dev &&\
./configure --prefix=/nginx --with-stream  &&\
make && make install 

ENV PATH $PATH:/nginx/sbin

ADD nginx.conf /nginx/conf/nginx.conf

WORKDIR /nginx/sbin

CMD ["nginx","-g","daemon off;"]

