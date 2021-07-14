import { registerBlockType } from '@wordpress/blocks';
import { RichText, InspectorControls, ColorPalette, BlockControls, AlignmentToolbar } from '@wordpress/block-editor';
import { PanelBody } from '@wordpress/components';

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

 registerBlockType('lapizzeria/boxes', {
	title: 'La Pizzeria Cajas',
	icon: { src: Logo },
	category: 'lapizzeria',
	attributes: {
		headingBox: {
			type: 'string',
			source: 'html', // lo vamos a poder guardar como html
			selector: '.box h2'
		},
		textBox: {
			type: 'string',
			source: 'html',
			selector: '.box p'
		},
		colorFondo: {
			type: 'string' // no tenemos selector porque estamos obteniendo el valor desde otro componente
		},
		colorTexto: {
			type: 'string' 
		},
		alineacionContenido: {
			type: 'string',
			default: 'center'
		}
	},
	edit: (props) => {

		// Extraer el contenido desde props
		const { attributes: { headingBox, textBox, colorFondo, colorTexto, alineacionContenido }, setAttributes } = props; // setAttributes es una función de Gutenberg que guarda lo que leamos en la base de datos

		const onChangeHeadingBox = nuevoHeading => { // esta función permite leer lo que el usuario escribe en la caja del encabezado
			setAttributes({ headingBox: nuevoHeading }) // guardamos en headingBox lo que leamos en nuevoHeading
		};

		const onChangeTextBox = nuevoTexto => { 
			setAttributes({ textBox: nuevoTexto }) 
		};

		const onChangeColorFondo = nuevoColor => {
			setAttributes({ colorFondo: nuevoColor })
		};

		const onChangeColorTexto = nuevoColor => {
			setAttributes({ colorTexto: nuevoColor })
		};

		const onChangeAlinearContenido = nuevaAlineacion => {
			setAttributes({ alineacionContenido: nuevaAlineacion })
		};

		return(
			<>
				<InspectorControls>
					<PanelBody
						title={'Ajustes de color'}
						initialOpen={true}
					>
						<div className="components-base-control">
							<div className="components-base-control__field">
								<label className="components-base-control__label">
									Color de fondo
								</label>
								<ColorPalette 
									onChange={onChangeColorFondo}
									value={colorFondo}
								/>	
								<label className="components-base-control__label">
									Color de texto
								</label>
								<ColorPalette 
									onChange={onChangeColorTexto}
									value={colorTexto}
								/>						
							</div>
						</div>
					</PanelBody>
				</InspectorControls>

				<BlockControls>
					<AlignmentToolbar 
						onChange={onChangeAlinearContenido}
					/>
				</BlockControls>

				<div className="box" style={{ backgroundColor: colorFondo, textAlign: alineacionContenido }}>
					<h2 style={{ color: colorTexto }}>
						<RichText 
							placeholder="Agrega el encabezado"
							onChange={onChangeHeadingBox}
							value={headingBox}
						/>
					</h2>
					<p style={{ color: colorTexto }}>
						<RichText 
							placeholder="Agrega el texto"
							onChange={onChangeTextBox}
							value={textBox}
						/>
					</p>					
				</div>
			</>
		)
	},
	save: (props) => {

		// Extraer el contenido desde props
		const { attributes: { headingBox, textBox, colorFondo, colorTexto, alineacionContenido } } = props; // setAttributes es una función de Gutenberg que guarda lo que leamos en la base de datos

		return(
			<div className="box" style={{ backgroundColor: colorFondo, textAlign: alineacionContenido }}>
				<h2 style={{ color: colorTexto }}>
					<RichText.Content value={headingBox} />
				</h2>
				<p style={{ color: colorTexto }}>
					<RichText.Content value={textBox} />
				</p>
			</div>
		)
	}
});



