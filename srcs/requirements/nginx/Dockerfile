FROM  alpine:3.15.4

RUN	apk update && apk upgrade && apk add --no-cache nginx openssl

RUN mkdir /etc/nginx/ssl
RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
        -out /etc/nginx/ssl/oronda.pem \
        -keyout /etc/nginx/ssl/oronda.key \
        -subj "/C=FR/CN=inception"

COPY ./conf/nginx.conf /etc/nginx/http.d/default.conf


# Start nginx
ENTRYPOINT ["nginx", "-g", "daemon off;"]