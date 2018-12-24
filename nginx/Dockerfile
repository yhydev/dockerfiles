FROM alpine
RUN apk update && apk add nginx && mkdir /run/nginx && touch /run/nginx/nginx.pid
CMD ["nginx", "-g", "daemon off;"]
