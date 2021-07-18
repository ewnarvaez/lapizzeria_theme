import { registerBlockType } from '@wordpress/blocks';
import { MediaUpload } from '@wordpress/block-editor';
import { Button } from '@wordpress/components';

// Logo para el bloque
import { ReactComponent as Logo } from '../pizzeria-icon.svg';

registerBlockType('lapizzeria/galeria', {
	title: 'La Pizzeria Galeria',
	icon: { src: Logo },
	category: 'lapizzeria',
	attributes: {
		imagenes: {
			type: 'array'
		}
	},
	edit: props => {

		//extraer los valores de props
		const { attributes: { imagenes = [] }, setAttributes } = props;

		const borrarImagen = imagenIndex => {
			const nuevasImagenes = imagenes.filter(( imagen, index ) => index !== imagenIndex);

			setAttributes({imagenes: nuevasImagenes});
		}

		const onSeleccionarNuevaImagen = nuevaImagen => {
			const imagen = {
				thumb: nuevaImagen.sizes.medium.url,
				full: nuevaImagen.sizes.full.url,
				id: nuevaImagen.id
			};

			setAttributes({ imagenes: [...imagenes, imagen] });
		}

		return(
			<div className="galeria-pizzeria">
				<MediaUpload
					onSelect={onSeleccionarNuevaImagen}
					type="image"
					render={ ({open}) => (
						<Button 
							className="lapizzeria-agregar-imagen"
							onClick={open}
							icon="format-image"
							showTooltip="true"
							label="Cambiar Imagen"
						/>
					)}					
				/>
				
				<ul className="listado-imagenes">
					{imagenes.map((imagen, index) => (
						<li className="imagen">
							<div 
								className="borrar-imagen"
								onClick={ () => borrarImagen(index) }
							>
								<span className="dashicons dashicons-trash"></span>
							</div>
							<img src={imagen.thumb} />
						</li>
					))}

				</ul>

			</div>
		);
	},
	save: props => {
		const { attributes: {imagenes = [] } } = props;

		if(imagenes.length === 0) {
			return(
				<p>No hay imágenes</p>
			)
		}

		return(
			<div className="galeria-pizzeria">
				<ul className="listado-imagenes">
					{imagenes.map(imagen => (
						<li className="imagen">							
							<a href={imagen.full} data-lightbox="galeria">
								<img src={imagen.thumb} />
							</a>
						</li>
					))}
				</ul>
			</div>
		)
	}
})

