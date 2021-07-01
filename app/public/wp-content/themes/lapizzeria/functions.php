<?php 

/** CSS y JavaScript **/
function lapizzeria_styles() {

	// normalize
	wp_enqueue_style( 'normalize', get_template_directory_uri() . '/css/normalize.css', array(), '8.0.1');

	// hoja de estilo propia
	wp_enqueue_style( 'style', get_stylesheet_uri(), array('normalize'), '1.0.0' );

	// GoogleFonts
	wp_enqueue_style( 'googleFonts', 'https://fonts.googleapis.com/css2?family=Open+Sans&family=Raleway:wght@400;700;900&family=Staatliches&display=swap', array(), '1.0.0');
}
add_action( 'wp_enqueue_scripts', 'lapizzeria_styles' );