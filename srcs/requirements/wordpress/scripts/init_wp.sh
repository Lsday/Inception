
printf "Starting php-fpm7...\n"

if [ ! -d "var/www/html/wordpress" ]; then
	curl -O https://wordpress.org/latest.tar.gz  && mkdir -p /var/www/html && tar -xf latest.tar.gz --directory=/var/www/html
	rm -rf latest.tar.gz
fi


if [ ! -d "var/www/html/wordpress/wp-content/plugins/redis-cache" ]; then
	# Download redis cache and unzip it
	wget https://downloads.wordpress.org/plugin/redis-cache.2.0.22.zip
	unzip redis-cache.2.0.22.zip
	rm -rf redis-cache.2.0.22.zip

	# ADD and COPY Files to container
	mv ./object-cache.php var/www/html/wordpress/wp-content/
	mv ./wp-config.php var/www/html/wordpress/wp-config.php

	cp -r redis-cache/ var/www/html/wordpress/wp-content/plugins/

fi


php-fpm7 -FR
