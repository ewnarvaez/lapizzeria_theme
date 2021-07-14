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
		'lapizzeria/boxes' // mapea tanto la versión php como js
	];

	// Recorrer bloques y agregar scripts y styles
	foreach ($blocks as $block) {
		register_block_type($block, array(
			'editor_script' => 'lapizzeria-editor-script', // script principal para el editor
			'editor_style' => 'lapizzeria-editor-styles', // estilos para el editor
			'style' => 'lapizzeria-frontend-styles' // estilos para el frontend
		));
	}
}
add_action('init', 'lapizzeria_registrar_bloques');