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
define( 'DB_NAME', 'id13801584_wp_e575abf7b47cfb388d3b509f48c85c30' );

/** MySQL database username */
define( 'DB_USER', 'id13801584_wp_e575abf7b47cfb388d3b509f48c85c30' );

/** MySQL database password */
define( 'DB_PASSWORD', '43233c0461ea0697bbc29d38a39360feb587134d' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          'T8ePUZx~vc4[Fc2I<?hw%`;50ieg=&lG78YXG82q.:u[v/05z;kP.TyM{cVv51nV' );
define( 'SECURE_AUTH_KEY',   ',UQ-T?!LZ?CBGqW3Ykx6[Z?Jo^]$l7(:MJr: J5L=h:{JS7j`3(welce~F)a~w@0' );
define( 'LOGGED_IN_KEY',     '*,gyXGsV@kCJKp3uUyE7wN.P)29?kEz!sgHg}kH+iJ>E9pP](=PS5f6@uUDCMdtv' );
define( 'NONCE_KEY',         'Ca+w~1-.KFXVlurdzG(zc S6@Y7g_OkcDIM9T s4A[EZ3$Vs`Wz`cs-/x)6mtOat' );
define( 'AUTH_SALT',         '9kA%!N9,Co[X{!<j:e;TR:n>JTX@#}KHM;U^2o6#$M:Y4|7a/Le,7P4]K))aREnL' );
define( 'SECURE_AUTH_SALT',  'ZLFLr#ftoe].9|Rj=NY<qR~[k=}5tQ7mN=47@}9Ejrkk/*q~}<1gD8NmoQ[O=#dZ' );
define( 'LOGGED_IN_SALT',    'cA+*Fih)WqZ $IMT6E>?=RowZ2G(7P4{Edt;Ea4`%4{6F$WMrx=G|KsL~6$H57L(' );
define( 'NONCE_SALT',        ']0^EshEe{8H>%9ulUTVVGLHtb7B_Jp3g$y%c;fvcmmFSq`mfMyQjOTQE6YFE**80' );
define( 'WP_CACHE_KEY_SALT', '6pvZL y!U/tBhIuEtu:%@h,>V&.&0G#5DL9JqpMb%U~1en)&hK<r*[}Gp}mn![cb' );

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
