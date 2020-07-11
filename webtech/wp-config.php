<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'carlos' );

/** MySQL database password */
define( 'DB_PASSWORD', 'carlos' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'yn2}Cs4T#|m 2dRvJ2K6NSN{xSyEc|C#?y<,8s_x!G2EKr=~&:Iv$}T!>Q2Y26v&' );
define( 'SECURE_AUTH_KEY',  '/n5r0 _/T7bS];rMVwY2PtoTewX5WGC=52<sV!{4c{j>`A1uJ7:i:0H<s</xPuVw' );
define( 'LOGGED_IN_KEY',    '<YC6gJTOq{2D4f7tY60 MX14rIL6&{%DQ7kI8?q;4T`sEv4,4$6g(gZgk}iW8WV+' );
define( 'NONCE_KEY',        'bnLlA3o0U`bb<RRz8e2P X=TV$1/ZYm`atE!3j:_[lJnxSBY-}HIApK%^,Z`7^wF' );
define( 'AUTH_SALT',        'paYE08.WNiH46pP}Uxu9=wZ);*`qGT[(qXX]2+*cgB{b2=|q4e@X::rCv2;>URv*' );
define( 'SECURE_AUTH_SALT', ':68$CVS)-a9e}rf8A#y~cPHow|a#nigVm:C.d&)=dt;{_LjMk/{@: asaS+:w{_~' );
define( 'LOGGED_IN_SALT',   ':?^FcP53K$ATFdpQE&Q.f!t`7~=}:YXd^}0T#RP}fq<Bgk0[rUzCIanRh4MX)(U3' );
define( 'NONCE_SALT',       'Lm5nNYA`IYS<gu]F+Cl{Io%9e%*|>D3hZ XqD!h]13U/3]b/pGchq4PpmhW*spdd' );

/**#@-*/

/**
 * WordPress Database Table prefix.
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
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
