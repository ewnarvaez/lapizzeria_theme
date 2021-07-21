import { registerBlockType } from '@wordpress/blocks';
import { MediaUpload, RichText, URLInputButton, BlockControls, AlignmentToolbar } from '@wordpress/block-editor';
import { Button } from '@wordpress/components';

// Logo para el bloque
import { ReactComponent as Logo } from '../pizzeria-icon.svg';

registerBlockType('lapizzeria/textoimagen', {
    title: 'La Pizzeria Texto Imagen',
    icon: { src: Logo },
    category: 'lapizzeria',
    attributes: {
        imagenFondo: {
            type: 'string',
            selector: '.imagen-texto-bloque'
        },
        tituloBloque: {
            type: 'string',
            source: 'html',
            selector: '.texto-bloque h1'
        },
        textoBloque: {
            type: 'string',
            source: 'html',
            selector: '.texto-bloque p'
        },
        urlBloque: {
            type: 'string',
            source: 'attribute',
            attribute: 'href'
        },
        imagenBloque: {
            type: 'string',
            source: 'attribute',
            selector: '.imagen-bloque img',
            attribute: 'src',
            default: Logo
        }
    },
    supports:{
        align: ['wide', 'full'] // Para soportar el hero a tamaño ancho o completo de pantalla
    },
    edit: props => {

        // Extraer los atributos
        const { attributes: { imagenFondo, tituloBloque, textoBloque, urlBloque, imagenBloque }, setAttributes } = props;

        const onSeleccionarImagenFondo = nuevaImagen => {
            setAttributes({ imagenFondo: nuevaImagen.sizes.full.url });
        }

        const onChangeTitulo = nuevoTitulo => {
            setAttributes({ tituloBloque: nuevoTitulo });
        }

        const onChangeTexto = nuevoTexto => {
            setAttributes({ textoBloque: nuevoTexto });
        }

        const onChangeUrl = nuevaUrl => {
            setAttributes({ urlBloque: nuevaUrl });
        }

        const onSeleccionarImagenContenido = nuevaImagen => {
            setAttributes({ imagenBloque: nuevaImagen.sizes.full.url })
        }

        return(
            <div 
                className="imagen-texto-bloque" 
                style={{backgroundImage: `url( ${imagenFondo} )`}}
            >

                <MediaUpload
                    onSelect={onSeleccionarImagenFondo}
                    type="image"
                    render={({open}) => (
                        <Button 
                            className="lapizzeria-agregar-imagen"
                            onClick={open}
                            icon="format-image"
                            showTooltip="true"
                            label="Cambiar Imagen"
                        />
                    )}
                />

                <div className="contenido-bloque">
                    <div className="texto-bloque">
                        <h1 className="titulo">
                            <RichText 
                                placeholder={'Agrega el titulo del bloque'}
                                onChange={onChangeTitulo}
                                value={tituloBloque}
                            />
                        </h1>
                        <p>
                            <RichText 
                                placeholder={'Agrega el texto del bloque'}
                                onChange={onChangeTexto}
                                value={textoBloque}
                            />
                        </p>
                        <div>
                            <a href={urlBloque} className="boton boton-secundario">Leer Más</a>
                        </div>
                        <URLInputButton 
                            onChange={onChangeUrl}
                            url={urlBloque}
                        />
                    </div>
                    <div className="imagen-bloque">
                        <img src={imagenBloque} />
                        <MediaUpload
                            onSelect={onSeleccionarImagenContenido}
                            type="image"
                            render={({open}) => (
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
                </div>              
            </div>            
        )
    },
    save: props => {

        // Extraer los atributos
        const { attributes: { imagenFondo, tituloBloque, textoBloque, urlBloque, imagenBloque } } = props;
        
        return(
            <div 
                className="imagen-texto-bloque" 
                style={{backgroundImage: `url( ${imagenFondo} )`}}
            >                

                <div className="contenido-bloque">
                    <div className="texto-bloque">
                        <h1 className="titulo">
                            <RichText.Content value={tituloBloque} />
                        </h1>
                        <p>
                            <RichText.Content value={textoBloque} />
                        </p>
                        <div>
                            <a href={urlBloque} className="boton boton-secundario">Leer Más</a>
                        </div>                        
                    </div>
                    <div className="imagen-bloque">
                        <img src={imagenBloque} />                        
                    </div>
                </div>              
            </div>            
        )
    }
})