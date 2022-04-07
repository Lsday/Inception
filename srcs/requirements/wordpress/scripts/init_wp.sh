
printf "Starting php-fpm7...\n"

#mv /wp-config.php /var/www/html/wordpress
#chmod +x /var/www/html/wordpress/wp-config.php
#chown -R nobody:nogroup /var/www/html/wordpress/wp-config.php

curl -O https://wordpress.org/latest.tar.gz  && mkdir -p /var/www/html && tar -xf latest.tar.gz --directory=/var/www/html


php-fpm7 -F
