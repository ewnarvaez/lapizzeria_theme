import { registerBlockType } from '@wordpress/blocks';
import { withSelect } from '@wordpress/data'; // se usa para hacer la consulta a la REST API
import { RichText, InspectorControls } from '@wordpress/block-editor';
import { PanelBody, RangeControl, SelectControl, TextControl } from '@wordpress/components';

// Logo para el bloque
import { ReactComponent as Logo } from '../pizzeria-icon.svg';

/**
 * 7 Pasos para crear un bloque en Gutenberg
 * 1. Importar el componente(s) que utilizarás
 * 2. Coloca el componente donde deseas utilizarlo
 * 3. Crea una función que lea los contenidos
 * 4. Registra un atributo
 * 5. Extraer el contenido desde props
 * 6. Guarda el contenido con setAttributes
 * 7. Lee los contenidos guardados con save()
 * */

registerBlockType('lapizzeria/menu', {
	title: 'La Pizzeria Menu',
	icon: { src: Logo },
	category: 'lapizzeria',
	attributes: {
		cantidadMostrar: {
			type: 'number'
		},
		categoriaMenu: {
			type: 'number',
			default: 4
		},
		tituloBloque: {
			type: 'string',
			default: 'Titulo Bloque'
		}
	},
	edit: withSelect((select, props) => {

		// extraer los valores
		const { attributes: { cantidadMostrar, categoriaMenu, tituloBloque }, setAttributes } = props;

		const onChangeCantidadMostrar = nuevaCantidad => {
			setAttributes({ cantidadMostrar: parseInt(nuevaCantidad) });
		}

		const onChangeCategoriaMenu = nuevaCategoria => {
			setAttributes({ categoriaMenu: nuevaCategoria });
		}

		const onChangeTituloBloque = nuevoTitulo => {
			setAttributes({ tituloBloque: nuevoTitulo });
		}

		return {
			// Enviar una petición a la api
			categorias: select("core").getEntityRecords('taxonomy', 'categoria-menu'),

			especialidades: select("core").getEntityRecords('postType', 'especialidades', {
				'categoria-menu': categoriaMenu,
				per_page: cantidadMostrar || 6
			}),
			onChangeCantidadMostrar,
			onChangeCategoriaMenu,
			onChangeTituloBloque,
			props
		};
	})

	(({ categorias, especialidades, onChangeCantidadMostrar, onChangeCategoriaMenu, onChangeTituloBloque, props }) => {

		// extraer los props
		const { attributes: { cantidadMostrar, categoriaMenu, tituloBloque } } = props;

		// verificar especialidades
		if(!especialidades) {
			return 'Cargando...';
		}

		// si no hay especialidades
		if(especialidades && especialidades.length === 0) {
			return 'No hay resultados';
		}

		// verificar categorias
		if(!categorias) {
			console.log('No hay categorias');
			return null;
		}

		// si no hay categorias
		if(categorias && categorias.length === 0) {
			console.log('No hay resultados');
			return null;
		}

		// Generar label y value a categorias
		if(categorias && categorias.length != 0) {
			categorias.forEach( categoria => {
				categoria['label'] = categoria.name;
				categoria['value'] = categoria.id;
			});
		}

		// Arreglo con valores por default (para agregar la opción Todos a las categorias)
		// const opcionDefault = [{ value: '', label: ' -- Todos -- '}];
		// const listadoCategorias = [...opcionDefault, ...categorias ];		

		return (
			<>
				<InspectorControls>
					<PanelBody 
						title={'Ajustes Cantidad'}
						initialOpen={true}
					>
						<div className="components-base-control">
							<div className="components-base-control__field">
								<label className="components-base-control__label">
									Cantidad a Mostrar
								</label>
								<RangeControl 
									onChange={onChangeCantidadMostrar}
									min={2}
									max={10}
									value={cantidadMostrar || 6}
								/>
							</div>
						</div>
					</PanelBody>						

					<PanelBody 
						title={'Ajustes Categorias'}
						initialOpen={false}
					>
						<div className="components-base-control">
							<div className="components-base-control__field">
								<label className="components-base-control__label">
									Categoria de especialidad
								</label>
								<SelectControl 
									options={ categorias }
									onChange={onChangeCategoriaMenu}
									value={categoriaMenu}
								/>
							</div>
						</div>

					</PanelBody>

					<PanelBody 
						title={'Titulo Bloque'}
						initialOpen={false}
					>
						<div className="components-base-control">
							<div className="components-base-control__field">
								<label className="components-base-control__label">
									Titulo Bloque
								</label>
								<TextControl 
									onChange={onChangeTituloBloque}
									value={tituloBloque}
								/>
							</div>
						</div>

					</PanelBody>

				</InspectorControls>

				<h2 className="titulo-menu">{tituloBloque}</h2>
				<ul className="nuestro-menu">
					{especialidades.map(especialidad => (
						<li>
							<img src={especialidad.imagen_destacada} />
							<div className="platillo">
								<div className="precio-platillo">
									<h3>{especialidad.title.rendered}</h3>
									<p>$ {especialidad.precio}</p>
								</div>
							</div>
							<div className="contenido-platillo">
								<p>
									<RichText.Content value={especialidad.content.rendered} />
								</p>								
							</div>
						</li>
					))}
				</ul>
			</>
		);
	}),		
	save: () => {
		return null; // no se retorna nada por aquí, el retorno se hace en el callback que esta en lapizzeria-gutenberg.php
	}
});