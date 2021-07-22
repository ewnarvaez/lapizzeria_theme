import { registerBlockType } from '@wordpress/blocks';
import { MediaUpload, InnerBlocks } from '@wordpress/block-editor';
import { Button } from '@wordpress/components';

// Logo para el bloque
import { ReactComponent as Logo } from '../pizzeria-icon.svg';



registerBlockType('lapizzeria/contenedor', {
    title: 'La Pizzeria Contenedor',
    icon: { src: Logo },
    category: 'lapizzeria',
    attributes: {
        imagenFondo: {
            type: 'string',
            selector: '.bloque-contenedor'
        }
    },
    edit: props => {

        //Extraer los valores de props
        const { attributes: { imagenFondo }, setAttributes } = props;

        const onSeleccionarImagenFondo = nuevaImagen => {
            setAttributes({ imagenFondo: nuevaImagen.sizes.full.url });
        }

        return(
                <div className="bloque-contenedor" style={{ backgroundImage: `url( ${imagenFondo} )`}}>
                    <div className="contenido-bloque">
                        <div className="imagen-fondo">
                            <MediaUpload
                                onSelect={onSeleccionarImagenFondo}
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
                        </div>
                        <div className="bloques-internos">
                            <InnerBlocks />
                        </div>
                    </div>
                </div>
            )
    },
    save: props => {

        //Extraer los valores de props
        const { attributes: { imagenFondo } } = props;

        return(
            <div className="bloque-contenedor" style={{ backgroundImage: `url( ${imagenFondo} )`}}>
                <div className="contenido-bloque">
                    <div className="imagen-fondo"></div>
                    <div className="bloques-internos">
                        <InnerBlocks.Content />
                    </div>
                </div>
            </div>
        )
    }
})