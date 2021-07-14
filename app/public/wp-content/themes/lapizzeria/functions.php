<?php 

function lapizzeria_setup() {

	/** Gutenberg **/

	// Soporte a los estilos por default de Gutenberg en tu tema
	add_theme_support('wp-block-styles');

	// Paleta de colores del tema
	add_theme_support('editor-color-palette', array(
		array(
			'name' => 'Rojo',
			'slug' => 'rojo',
			'color' => '#a61206'
		),
		array(
			'name' => 'Naranja',
			'slug' => 'naranja',
			'color' => '#f19f30'
		),
		array(
			'name' => 'Verde',
			'slug' => 'verde',
			'color' => '#127427'
		),
		array(
			'name' => 'Blanco',
			'slug' => 'blanco',
			'color' => '#ffffff'
		),
		array(
			'name' => 'Negro',
			'slug' => 'negro',
			'color' => '#000000'
		),
		array(
			'name' => 'Gris',
			'slug' => 'gris',
			'color' => '#c1c1c1'
		)
	));

	// Deshabilita los colores personalizados
	add_theme_support('disable-custom-colors');

	// Imagenes destacadas
	add_theme_support( 'post-thumbnails' );

	// Tamaños de imágenes
	add_image_size( 'nosotros', 437, 291, true );
	add_image_size( 'especialidades', 768, 515, true );
	add_image_size( 'especialidades_portrait', 435, 526, true );
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

/** Zona de Widgets **/
function lapizzeria_widgets() {
	register_sidebar(array(
		'name' => 'Blog Sidebar',
		'id' => 'blog_sidebar',
		'before_widget' => '<div class="widget">',
		'after_widget' => '</div>',
		'before_title' => '<h3>',
		'after_title' => '</h3>'
	));
}
add_action('widgets_init', 'lapizzeria_widgets');

/** Agregar botones a paginador **/
function lapizzeria_botones_paginador() {
	return 'class="boton boton-secundario"';
}
add_filter( 'previous_posts_link_attributes', 'lapizzeria_botones_paginador' );
add_filter( 'next_posts_link_attributes', 'lapizzeria_botones_paginador' );
