<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wp_db' );

/** Database username */
define( 'DB_USER', 'oronda' );

/** Database password */
define( 'DB_PASSWORD', 'pouet' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '9Y-_5ib{;!BAL2+Vd7e<=77[=^HIRQ,Jm*{$5`>^lOtwf$4bU%GksKS-^$^wUt38' );
define( 'SECURE_AUTH_KEY',  'Z]$QZn)(^P:iqimw2E!l[cI>RlLN<UeP#mU@8o=#|c03d|_/XEf5x!;-$t= @OfD' );
define( 'LOGGED_IN_KEY',    '#TB^GT ouG(9b-er8yPj$-;h91ZGLe{gd5^n;>L<q% $[T+qn`&wUmb+6`h d0zM' );
define( 'NONCE_KEY',        'f_b}Qg*-7_W*{7>$+`Mq^-Z~iOUirk*vw>>EAZ(#^j4~7Y=yiT1pgOn6z=XP|FZS' );
define( 'AUTH_SALT',        'bog,9J/}&2=FIAYd19a&aR3hl.QFKs/ilVZJ.=6Z/x!; ;utbmo.ibMQ7tm~KL9[' );
define( 'SECURE_AUTH_SALT', 'I1F&)v8+6HjyLrXqLxI7dv8jLSxB~aa5eCeeiD*a<1K&0+M,oq-v8_BxN+s?rn@6' );
define( 'LOGGED_IN_SALT',   'sI|%NJ8pq~w3hP=y/J.9>w<xbGnK@}<Eo]_cupj|Lcgcz=kM~H9&V<;|j4d@HU[%' );
define( 'NONCE_SALT',       '4C: 6f+EuUHx*B[91}0MZGDRQ+*3$obwQb! 6bhNBI(PLxdM7>U`lccZxad x#mf' );
define('WP_CACHE_KEY_SALT', 'oronda.42.fr');
define('WP_CACHE', true);
define('WP_REDIS_HOST', 'redis');

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', true );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
