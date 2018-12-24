FROM alpine

RUN apk update && apk add python && \
wget  https://bootstrap.pypa.io/get-pip.py && \
python get-pip.py && \
pip install shadowsocks


CMD ["ssserver","-k password"]
#&&  sed -i 's/_cleanup/_reset/g' /usr/local/lib/python3.7/site-packages/shadowsocks/crypto/openssl.py 

