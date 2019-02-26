FROM alpine

RUN apk update && apk add git && git clone https://github.com/yhydev/share-linux.git && sh share-linux/alpine-build.sh

EXPOSE 80
CMD ["sh","/share-linux/run.sh"]
#docker run -it -p 9090:80 -v /var/run/docker.sock:/var/run/docker.sock alpine
