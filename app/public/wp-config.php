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
define( 'DB_NAME', 'local' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

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
define('AUTH_KEY',         'UveWxukOXzI0UrJr/R1PRAjjPSy03XzQ8F3NmCYrcfyamB9/KiD33SAELTzVJWMSbxbv89BTRzs77/u+srVkDw==');
define('SECURE_AUTH_KEY',  'HTRyWRd6TyWigugHH3aIdGDhwua6A6CQ+7lrco7ku6S2x0PYs1xaL0syq2KR0Msty/qqQce7/KOg8g/8vyID9Q==');
define('LOGGED_IN_KEY',    'aAZJWy2Rvn4Xve7kJhY58KsmwGu/pVYGWO2nlUsHFvoovwdzhr2TahEG6YlOf815HDG8Ho1MSV+67es6Yrp5yg==');
define('NONCE_KEY',        'ZDHnlNkovg8UCv2F+IF20Y6EGFjHUfDHfav7AMjdL4FYsg3TdAwsa31RyiiItB0jKp3p72gbMn1FAHaD/jKfAw==');
define('AUTH_SALT',        'iFRq1oE/1tXdQ4iS634sN2fJYAHoV4eckAJGknEEFZOPjyt2Bxp6cTqkBddBEY/yUZcUUfz60a/TUsgtCH3Lzw==');
define('SECURE_AUTH_SALT', 'cooPg2oHG6/FDmWFyqqgHJkaDJpipvrP9yqzB+35wxdZoEhrLAjRVnzlZgjX84VDek0qr7ghl+Mrkw5hNylRpA==');
define('LOGGED_IN_SALT',   '1hKMSJg6drrPyrTBdRJHTd6xsJn5s5YGh5O7GdNGNNpAfYU1m7VbO05JpAEKROEOPZfxI+oNQQN9c6bMUPay8g==');
define('NONCE_SALT',       'btKMajvjS0KG/fWTj1tx5PwoNX8EBopJa+Helgx6gqJ0ufO4B5Wd0vjOJgIJZUZnbEWT0AJ+k6pwwNEmH7N39g==');

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
