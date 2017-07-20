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
define('DB_USER', 'jose');

/** MySQL database password */
define('DB_PASSWORD', '123');

/** MySQL hostname */
define('DB_HOST', 'localhost');

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
define('AUTH_KEY',         'a%sm#|-CS$ejV8+*L`?Bp?60P 8/>!jq57ohY.3qz+|~WY(Z[&=Ggx/fp^C^acEj');
define('SECURE_AUTH_KEY',  '`uX2pS._w~ki{.yUt<IJ.XsqQV2w6!.AFZ5i!hGL6])_@+|!wNQL;QdO1Oykw=p*');
define('LOGGED_IN_KEY',    'jyTfH.,$DIj3+cMq3]h{`[oH/gKSnl jHGWtLF{Bg7zG36$/_C+E`Wt5+dRS*4tR');
define('NONCE_KEY',        '~s`K=#k+~QZd=fX4(e(T#o[~v3k`$i47t5WvzjWi#}N~$6s|69QQ%39L31F]y)6%');
define('AUTH_SALT',        'D!V|M1?D#HYqM5SX3LVU@aXLKC-VUP#?YTpE{c8y>lxS([3 SM_x7pgT&,:`!(gV');
define('SECURE_AUTH_SALT', '@H6[Spjwpl.Oc)y5nb~7*0e62AvV5u~ncgp#^g:zq>N9/~KT0+o!Sf)x3<7y~1Uz');
define('LOGGED_IN_SALT',   'vj+q;s6-G,T.To/8xeAue3~Dy/.+6dbaf$Z~P00[ ew>9C~U.,}AtV6Xy@NkywaJ');
define('NONCE_SALT',       'y/m*0[_:`yI Pw.?z)dT%OdZ[Ygq2H1=)G~.QU@cE<o1>QCG.m+sHnwU)-BdN$SM');

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
