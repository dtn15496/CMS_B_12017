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
define('DB_NAME', 'wordpress');

/** MySQL database username */
define('DB_USER', 'test');

/** MySQL database password */
define('DB_PASSWORD', '123456');

/** MySQL hostname */
define('DB_HOST', '192.168.100.10');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'k:SbFh0_pu}Fo=.%P4alj1.?%#af{s:?l:SScK@~Hsh})tr?qI#pBmNE+]!pbZ!Q');
define('SECURE_AUTH_KEY',  '&[ZdsCA]s*CT;vK>b#6>Of!-e}?7sMOsS.yo`mgF$,lXm0a]jE/Z$xi%9o^k>trn');
define('LOGGED_IN_KEY',    '.Q>F#pZ}h4L</u0oDbr<$*0-p%G*&~>N*l}q~m>oa4Z(b3sZM B@4is3-q#5CbP,');
define('NONCE_KEY',        '84XYGK[p!4bt$y6D7)%/9AJ>@_rTiiS,rf$=,a&B]Bg^y,v,5@gK-2/#,}x_+3Os');
define('AUTH_SALT',        'oi6i E&O6-nIVOa*@!4 q2)Npv:B%q8liY!>ptVX/J5}::~!t-uk>n^4bE/s$)KW');
define('SECURE_AUTH_SALT', '_Wk^^^TU-,T6]p];A(Yx~GRkI8f7_1~(tmGc;P1s96 @p/PL_+Ij`-L<_dJteW(R');
define('LOGGED_IN_SALT',   'y&Y;%K8Yrb<dYN*7P2esE( Mn~Y&IlM<00!YZ/cgf)rM?R/msZA:g|;neHWItrfQ');
define('NONCE_SALT',       ')R.HKd@mr=[Xz_|_RD&bff:qdsGS?P!$6@k H|O&/=cLBZ@R2JmS3OJ9)U(GN*+r');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

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
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
define( 'WP_ALLOW_REPAIR', true );
