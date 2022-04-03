FROM alpine:3.14

RUN	apk update && apk upgrade && apk add --no-cache nginx 

COPY ./conf/nginx.conf /etc/nginx/http.d/default.conf


# Start nginx
ENTRYPOINT ["nginx", "-g", "daemon off;"]