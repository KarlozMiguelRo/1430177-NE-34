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
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'wordpress' );

/** MySQL database password */
define( 'DB_PASSWORD', 'd328dc5345afd9681099ff35406f8c82b37a5486e798fead' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

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
define( 'AUTH_KEY',         'VXx3${3]y7$y[YO3ZQA+tK+<|gWci:WC=/1:k#}aP(=l^CjP`G,1o~g>T3RA  G]' );
define( 'SECURE_AUTH_KEY',  '*m/7hO@Po*)NLt,!,|5@9Fgg-RPVzHcF!D{k1x1*y5`o^#&oYYCM_FSoE0Dw[*A(' );
define( 'LOGGED_IN_KEY',    '[[ _4XRsi&1M^wFv$aJc(y}JQ~$9]BhiOi5,&z:kp3Sp{my0v?z(&Rgc3  7{D)@' );
define( 'NONCE_KEY',        'QeFUHM[P!#{HKwsUf?~}.3xoh&nZ,b ;95MVC0NXusr,>+ba0$Az[GNfDJ<,lUy ' );
define( 'AUTH_SALT',        '*S]WL?H-1.{~BJtU5rzTsW%Wr`f:(F6-P6)9V$(H61j?:KN{_|.7EaOTj6wd5Tg`' );
define( 'SECURE_AUTH_SALT', 'q@$!k<5ZeX|XK0X6`W7iW;HkwU.bft:%?Z6E2IMj$NG@9HV3heV^R.(fp}+TmR?y' );
define( 'LOGGED_IN_SALT',   'm0Tr9q]<J-WCfs~q!*OugsFQnHC]LR<#wbAfdz~b*1H39 `sY~LlfCU11BN$?y4d' );
define( 'NONCE_SALT',       'K?WBPe6HDK~?g0G#4ur6>]C%]a/;|4Y%#VEwYEbI`_(5i&`^_R f^<4}HA`t{0;n' );

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
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
