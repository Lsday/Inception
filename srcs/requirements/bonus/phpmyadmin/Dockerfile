FROM  alpine:3.15.4

RUN apk update
RUN apk add php7-common php7-iconv php7-json php7-gd php7-curl php7-xml \
	php7-mysqli php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql php7-soap php7-xmlrpc \
	php7-posix php7-mcrypt php7-gettext php7-ldap php7-ctype php7-dom php7 php7-fpm php7-opcache php7-session curl

RUN curl -O https://files.phpmyadmin.net/phpMyAdmin/5.1.3/phpMyAdmin-5.1.3-all-languages.tar.xz \
&& tar -xf phpMyAdmin-5.1.3-all-languages.tar.xz --directory=/
RUN rm -rf phpMyAdmin-5.1.3-all-languages.tar.xz

RUN mv phpMyAdmin-5.1.3-all-languages/* /


ENV PMA_HOST=mariadb PMA_USER=oronda PMA_PASSWORD=pouet
COPY config.inc.php .
CMD php -S 0.0.0.0:8081
