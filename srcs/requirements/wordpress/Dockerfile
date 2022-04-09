FROM  alpine:3.15.4

RUN 		apk -U upgrade && apk add php7 php7-fpm php7-phar php7-json php7-mysqli php7-curl php7-iconv php7-pecl-mailparse curl mariadb-client bash	
													
COPY		./config/www.conf /etc/php7/php-fpm.d/www.conf


COPY  ./config/wp-config.php .


COPY	./scripts/init_wp.sh .
COPY  ./config/object-cache.php .

ENTRYPOINT		[ "bash", "init_wp.sh" ]
