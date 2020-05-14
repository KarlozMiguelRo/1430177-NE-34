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
define( 'DB_NAME', 'wordpresswork' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

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
define( 'AUTH_KEY',         '&7{e8x0#dsm?ub%@@9A#cd#ok2KW,$G^46EI(nYVU[~VDq1FFYvci@AHg9<JU[8u' );
define( 'SECURE_AUTH_KEY',  '*moxwlRN%# /V1tcOVufJA>b,} qa##@f$Qv.PIe:Jo-qPXsTL4$A. ,,qj]Wfz*' );
define( 'LOGGED_IN_KEY',    'zsQOHP+>5PS~<wmH:_qTj7STBA=<yUAVuER%-6FcG8f3Uh:up9yMY>l_t]747B2s' );
define( 'NONCE_KEY',        'bZ8x*T%l3T2g&g5<&6]D<y3qn_x-WxNGj#a&f2ld]MuSyoE:U5nU>PAe.DhuVAlQ' );
define( 'AUTH_SALT',        'V11RMXcgu[6A@7tA# wX ]M-b@_GNVkrb<oAo>1s- o;bS,[MB+3bMGNt?x0}{wA' );
define( 'SECURE_AUTH_SALT', '0=$ i>(Ds;gbe@cs+5Q;_3c,D@W[!fF~edNN-qjfdJ`XJjeOE$MyFXKGmJIirZ%j' );
define( 'LOGGED_IN_SALT',   '=:&K{&$!){]Mv+sU^GJ#^yQ ZwRQZj4*brC>kSV?269Xe>a>PO5 E#F._icW7Ki#' );
define( 'NONCE_SALT',       'hl6hDK&p*f=Sd_JYflpm7I2gc68!@i}J{I#.Oumpu7i^]3*rE_J%uQI9GQV/eIc!' );

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
