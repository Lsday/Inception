FROM		alpine:3.13.4

RUN 		apk -U upgrade && apk add	php7				\
										php7-fpm			\
										php7-phar			\
										php7-json			\
										php7-mysqli			\
										php7-curl			\
										php7-iconv			\
										php7-pecl-mailparse	\
										curl				\
										mariadb-client		\
										bash				
										
										#redis				# for redis-cli

# The wordpress installation directory


# install wp-cli

RUN			curl -O https://wordpress.org/latest.tar.gz  && mkdir -p /var/www/html && tar -xf latest.tar.gz --directory=/var/www/html


COPY		./config/www.conf /etc/php7/php-fpm.d/www.conf

# Make the startup script available as /init.sh inside the container

COPY			./scripts/init_wp.sh .

ENTRYPOINT		[ "bash", "init_wp.sh" ]
