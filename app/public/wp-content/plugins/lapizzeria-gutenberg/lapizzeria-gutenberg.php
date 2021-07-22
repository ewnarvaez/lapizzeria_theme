<?php
/*
	Plugin Name: La Pizzeria Gutenberg Blocks
	Plugin URI:
	Description: Agrega bloques de Gutenberg nativos
	Version: 1.0
	Author: Edwin Willer Narváez Burbano
	Author URI: https://edwinnarvaez.com
	License: GPL2
	License URI: https://www.gnu.org/licenses/gpl-2.0.html
*/

// Para que no puedan acceder directamente a los archivos del plugin
if(!defined('ABSPATH')) exit;


/** CATEGORIAS PERSONALIZADAS **/
function lapizzeria_categoria_personalizada($categories, $post) {
	return array_merge(
		$categories,
		array(
			array(
				'slug' => 'lapizzeria',
				'title' => 'La Pizzeria',
				'icon' => 'store' // icono de dashicons (dashicons-store), el dashicons se omite
			)
		)
	);
}
add_filter('block_categories', 'lapizzeria_categoria_personalizada', 10, 2); // prioridad de 10 que es la más alta y 2 parámetros


/** REGISTRAR BLOQUES, SCRIPTS Y CSS **/
function lapizzeria_registrar_bloques() {

	// Si gutenbert no existe, salir
	if (!function_exists('register_block_type')) {
		return;
	}

	// Registrar los bloques en el editor
	wp_register_script(
		'lapizzeria-editor-script', // nombre único
		plugins_url('build/index.js', __FILE__), // archivo con los bloques que se va a estar compilando todo el tiempo con npm start
		array('wp-blocks', 'wp-i18n', 'wp-element', 'wp-editor'), // dependencias
		filemtime(plugin_dir_path( __FILE__ ) . 'build/index.js') // trae siempre la versión más reciente
	);

	// Estilos para el editor (únicamente)
	wp_register_style(
		'lapizzeria-editor-styles', // nombre único
		plugins_url('build/editor.css', __FILE__), // archivo css para el editor
		array('wp-edit-blocks'), // dependencias
		filemtime(plugin_dir_path( __FILE__ ) . 'build/editor.css') // trae siempre la versión más reciente evitando el caching de wordpress
	);

	// Estilos para los bloques (backend y frontend)
	wp_register_style(
		'lapizzeria-frontend-styles', // nombre único
		plugins_url('build/style.css', __FILE__), // archivo css para el editor
		array(), // dependencias
		filemtime( plugin_dir_path( __FILE__ ) . 'build/style.css' ) // trae siempre la versión más reciente
	);

	// Arreglo de bloques
	$blocks = [
		'lapizzeria/boxes', // mapea tanto la versión php como js
		'lapizzeria/galeria',
		'lapizzeria/hero',
		'lapizzeria/textoimagen',
		'lapizzeria/contenedor'
	];

	// Recorrer bloques y agregar scripts y styles
	foreach ($blocks as $block) {
		register_block_type($block, 
			array(
				'editor_script' => 'lapizzeria-editor-script', // script principal para el editor
				'editor_style' => 'lapizzeria-editor-styles', // estilos para el editor
				'style' => 'lapizzeria-frontend-styles' // estilos para el frontend
			)
		);
	}

	/** REGISTRAR UN BLOQUE DINÁMICO **/
	register_block_type( 'lapizzeria/menu', 
		array(
			'editor_script' => 'lapizzeria-editor-script', // script principal para el editor
			'editor_style' => 'lapizzeria-editor-styles', // estilos para el editor
			'style' => 'lapizzeria-frontend-styles', // estilos para el frontend
			'render_callback' => 'lapizzeria_especialidades_frontend' // Query a la base de datos
		)
	);

}
add_action('init', 'lapizzeria_registrar_bloques');


/** CONSULTA LA BASE DE DATOS PARA MOSTRAR LOS RESULTADOS EN EL FRONTEND **/

function lapizzeria_especialidades_frontend($atts) { // con $atts podemos acceder a los atributos en este caso la cantidad a mostrar

	// echo "<pre>";
	// var_dump($atts);
	// echo "</pre>";

	// Extraer los valores y agregar default
	$cantidad = $atts['cantidadMostrar'] ? $atts['cantidadMostrar'] : 2;
	$titulo_bloque = $atts['tituloBloque'] ? $atts['tituloBloque'] : 'Nuestras Especialidades';
	$tax_query = array();

	if(isset($atts['categoriaMenu'])) {
		$tax_query[] = array(
			'taxonomy' => 'categoria-menu',
			'terms' => $atts['categoriaMenu'],
			'field' => 'term_id'
		);
	}


	// Obtener los datos del Query
	$especialidades = wp_get_recent_posts(array(
		'post_type' => 'especialidades',
		'post_status' => 'publish',
		'numberposts' => $cantidad,
		'tax_query' => $tax_query
	));

	// Revisar que haya resultados
	if(count($especialidades) == 0) {
		return 'No hay especialidades';
	}

	$cuerpo = '';
	$cuerpo .= '<h2 class="titulo-menu">';
	$cuerpo .= $titulo_bloque;
	$cuerpo .= '</h2>';
	$cuerpo .= '<ul class="nuestro-menu">';
	foreach($especialidades as $esp):
		// obtener un objeto del post
		$post = get_post($esp['ID']);
		setup_postdata($post); // permite acceder a los template tags del post

		$cuerpo .= sprintf(
			'<li>
				%1$s
				<div class="platillo">
					<div class="precio-platillo">
						<h3>%2$s</h3>
						<p>$ %3$s</p>
					</div>
				</div>
				<div class="contenido-platillo">
					<p>%4$s</p>								
				</div>
			</li>',
			get_the_post_thumbnail($post, 'especialidades'), // se remplaza por el 1 (thumbnail)
			get_the_title($post), // se remplaza en el h3 por el 2
			get_field('precio', $post),
			get_the_content($post)

		);
		wp_reset_postdata();

	endforeach;
	$cuerpo .= '</ul>';

	return $cuerpo;
}

/** Agrega lightbox a plugin */
function lapizzeria_frontend_scripts() {
	wp_enqueue_style('lightbox', 'https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.3/css/lightbox.min.css', array(), '2.11.3');
	wp_enqueue_script('lightboxjs', 'https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.3/js/lightbox.min.js', array('jquery'), '2.11.3', true);
}
add_action('wp_enqueue_scripts', 'lapizzeria_frontend_scripts');