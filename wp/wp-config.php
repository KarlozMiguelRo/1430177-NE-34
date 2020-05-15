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
define( 'AUTH_KEY',         'pANpe@O{}W2An:pB]U%trA3#0?T&s gIEQ-WQYv9ok0lxbp^syR-4v8WVoD2Qjt/' );
define( 'SECURE_AUTH_KEY',  'MCs#)nKoKcU Er_^#7AJ$!KWH~2QTwNze1OM2<Xp_tSbV4o2=,t$s|B7b1XI]eei' );
define( 'LOGGED_IN_KEY',    'hU17 &YNRK&wsNq`LSIyCP+B03K]}uD-(#W-[6bkfDKft[Kv6wY%?6pN0WbST>g4' );
define( 'NONCE_KEY',        'rMvM]Lis( HneCsu_h)ZMF}$Qyq$?TEYu2&g9+tE6T~Ty<X8Y)C~ mRM^{VN?kh-' );
define( 'AUTH_SALT',        'ux8TSCq9ANO7O=.UfR;2Z0/~mL[eUJHmm|ekrHU-547}V2qv!gityy;-9MUBU=q%' );
define( 'SECURE_AUTH_SALT', ')oE8P}eRl_Ty&eU@aWJkPX!Lt; Z%eTsxt$M#p&2q4s^}2KG##@~yC/z%4k=cRWx' );
define( 'LOGGED_IN_SALT',   'NCY0oCPSz^dB]P@T]b{uTl)~ogNw6]!M8AcZjj5kTJ}m+!jYZ$YT8Yoomvvq4[8l' );
define( 'NONCE_SALT',       'meYk0qJCc;8/_],PSih.R.9y&ic?1|wI:$(MXVjj)VG6&Z]+ot`$P23RZu5/?P1[' );

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
