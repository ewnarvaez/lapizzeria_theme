<?php 

function lapizzeria_setup() {

	// Imagenes destacadas
	add_theme_support( 'post-thumbnails' );
}
add_action('after_setup_theme', 'lapizzeria_setup');

/** CSS y JavaScript **/
function lapizzeria_styles() {

	/** CSS **/
	// normalize
	wp_enqueue_style( 'normalize', get_template_directory_uri() . '/css/normalize.css', array(), '8.0.1');

	// hoja de estilo propia
	wp_enqueue_style( 'style', get_stylesheet_uri(), array('normalize'), '1.0.0' );

	// GoogleFonts
	wp_enqueue_style( 'googleFonts', 'https://fonts.googleapis.com/css2?family=Open+Sans&family=Raleway:wght@400;700;900&family=Staatliches&display=swap', array(), '1.0.0');

	// slicknav_css
	wp_enqueue_style( 'slicknavCSS', get_template_directory_uri() . '/css/slicknav.min.css', array(), '1.0.10');


	/** JS **/
	// slicknav javascript
	wp_enqueue_script('slicknavJS', get_template_directory_uri() . '/js/jquery.slicknav.min.js', array('jquery'), '1.0.10', true);

	// Script propio
	wp_enqueue_script('scripts', get_template_directory_uri() . '/js/scripts.js', array('jquery'), '1.0.0', true);
}
add_action( 'wp_enqueue_scripts', 'lapizzeria_styles' );

/** MENÚS **/
function lapizzeria_menus() {
	register_nav_menus( array( 
		'header-menu' => 'Header Menu',
		'redes-sociales' => 'Redes Sociales'
	) );
}
add_action( 'init', 'lapizzeria_menus');

