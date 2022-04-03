
printf "Starting php-fpm7...\n"

curl -O https://wordpress.org/latest.tar.gz  && mkdir -p /var/www/html && tar -xf latest.tar.gz --directory=/var/www/html

php-fpm7 -F
