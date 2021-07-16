/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, { enumerable: true, get: getter });
/******/ 		}
/******/ 	};
/******/
/******/ 	// define __esModule on exports
/******/ 	__webpack_require__.r = function(exports) {
/******/ 		if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 			Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 		}
/******/ 		Object.defineProperty(exports, '__esModule', { value: true });
/******/ 	};
/******/
/******/ 	// create a fake namespace object
/******/ 	// mode & 1: value is a module id, require it
/******/ 	// mode & 2: merge all properties of value into the ns
/******/ 	// mode & 4: return value when already ns object
/******/ 	// mode & 8|1: behave like require
/******/ 	__webpack_require__.t = function(value, mode) {
/******/ 		if(mode & 1) value = __webpack_require__(value);
/******/ 		if(mode & 8) return value;
/******/ 		if((mode & 4) && typeof value === 'object' && value && value.__esModule) return value;
/******/ 		var ns = Object.create(null);
/******/ 		__webpack_require__.r(ns);
/******/ 		Object.defineProperty(ns, 'default', { enumerable: true, value: value });
/******/ 		if(mode & 2 && typeof value != 'string') for(var key in value) __webpack_require__.d(ns, key, function(key) { return value[key]; }.bind(null, key));
/******/ 		return ns;
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "";
/******/
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = "./src/index.js");
/******/ })
/************************************************************************/
/******/ ({

/***/ "./src/boxes/index.js":
/*!****************************!*\
  !*** ./src/boxes/index.js ***!
  \****************************/
/*! no exports provided */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _wordpress_element__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @wordpress/element */ "@wordpress/element");
/* harmony import */ var _wordpress_element__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _wordpress_blocks__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @wordpress/blocks */ "@wordpress/blocks");
/* harmony import */ var _wordpress_blocks__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_wordpress_blocks__WEBPACK_IMPORTED_MODULE_1__);
/* harmony import */ var _wordpress_block_editor__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! @wordpress/block-editor */ "@wordpress/block-editor");
/* harmony import */ var _wordpress_block_editor__WEBPACK_IMPORTED_MODULE_2___default = /*#__PURE__*/__webpack_require__.n(_wordpress_block_editor__WEBPACK_IMPORTED_MODULE_2__);
/* harmony import */ var _wordpress_components__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! @wordpress/components */ "@wordpress/components");
/* harmony import */ var _wordpress_components__WEBPACK_IMPORTED_MODULE_3___default = /*#__PURE__*/__webpack_require__.n(_wordpress_components__WEBPACK_IMPORTED_MODULE_3__);
/* harmony import */ var _pizzeria_icon_svg__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! ../pizzeria-icon.svg */ "./src/pizzeria-icon.svg");



 // Logo para el bloque


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

Object(_wordpress_blocks__WEBPACK_IMPORTED_MODULE_1__["registerBlockType"])('lapizzeria/boxes', {
  title: 'La Pizzeria Cajas',
  icon: {
    src: _pizzeria_icon_svg__WEBPACK_IMPORTED_MODULE_4__["ReactComponent"]
  },
  category: 'lapizzeria',
  attributes: {
    headingBox: {
      type: 'string',
      source: 'html',
      // lo vamos a poder guardar como html
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
  edit: props => {
    // Extraer el contenido desde props
    const {
      attributes: {
        headingBox,
        textBox,
        colorFondo,
        colorTexto,
        alineacionContenido
      },
      setAttributes
    } = props; // setAttributes es una función de Gutenberg que guarda lo que leamos en la base de datos

    const onChangeHeadingBox = nuevoHeading => {
      // esta función permite leer lo que el usuario escribe en la caja del encabezado
      setAttributes({
        headingBox: nuevoHeading
      }); // guardamos en headingBox lo que leamos en nuevoHeading
    };

    const onChangeTextBox = nuevoTexto => {
      setAttributes({
        textBox: nuevoTexto
      });
    };

    const onChangeColorFondo = nuevoColor => {
      setAttributes({
        colorFondo: nuevoColor
      });
    };

    const onChangeColorTexto = nuevoColor => {
      setAttributes({
        colorTexto: nuevoColor
      });
    };

    const onChangeAlinearContenido = nuevaAlineacion => {
      setAttributes({
        alineacionContenido: nuevaAlineacion
      });
    };

    return Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["Fragment"], null, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])(_wordpress_block_editor__WEBPACK_IMPORTED_MODULE_2__["InspectorControls"], null, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])(_wordpress_components__WEBPACK_IMPORTED_MODULE_3__["PanelBody"], {
      title: 'Ajustes de color',
      initialOpen: true
    }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("div", {
      className: "components-base-control"
    }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("div", {
      className: "components-base-control__field"
    }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("label", {
      className: "components-base-control__label"
    }, "Color de fondo"), Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])(_wordpress_block_editor__WEBPACK_IMPORTED_MODULE_2__["ColorPalette"], {
      onChange: onChangeColorFondo,
      value: colorFondo
    }), Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("label", {
      className: "components-base-control__label"
    }, "Color de texto"), Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])(_wordpress_block_editor__WEBPACK_IMPORTED_MODULE_2__["ColorPalette"], {
      onChange: onChangeColorTexto,
      value: colorTexto
    }))))), Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])(_wordpress_block_editor__WEBPACK_IMPORTED_MODULE_2__["BlockControls"], null, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])(_wordpress_block_editor__WEBPACK_IMPORTED_MODULE_2__["AlignmentToolbar"], {
      onChange: onChangeAlinearContenido
    })), Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("div", {
      className: "box",
      style: {
        backgroundColor: colorFondo,
        textAlign: alineacionContenido
      }
    }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("h2", {
      style: {
        color: colorTexto
      }
    }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])(_wordpress_block_editor__WEBPACK_IMPORTED_MODULE_2__["RichText"], {
      placeholder: "Agrega el encabezado",
      onChange: onChangeHeadingBox,
      value: headingBox
    })), Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("p", {
      style: {
        color: colorTexto
      }
    }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])(_wordpress_block_editor__WEBPACK_IMPORTED_MODULE_2__["RichText"], {
      placeholder: "Agrega el texto",
      onChange: onChangeTextBox,
      value: textBox
    }))));
  },
  save: props => {
    // Extraer el contenido desde props
    const {
      attributes: {
        headingBox,
        textBox,
        colorFondo,
        colorTexto,
        alineacionContenido
      }
    } = props; // setAttributes es una función de Gutenberg que guarda lo que leamos en la base de datos

    return Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("div", {
      className: "box",
      style: {
        backgroundColor: colorFondo,
        textAlign: alineacionContenido
      }
    }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("h2", {
      style: {
        color: colorTexto
      }
    }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])(_wordpress_block_editor__WEBPACK_IMPORTED_MODULE_2__["RichText"].Content, {
      value: headingBox
    })), Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("p", {
      style: {
        color: colorTexto
      }
    }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])(_wordpress_block_editor__WEBPACK_IMPORTED_MODULE_2__["RichText"].Content, {
      value: textBox
    })));
  }
});

/***/ }),

/***/ "./src/index.js":
/*!**********************!*\
  !*** ./src/index.js ***!
  \**********************/
/*! no exports provided */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _boxes__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./boxes */ "./src/boxes/index.js");
/* harmony import */ var _menu__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./menu */ "./src/menu/index.js");



/***/ }),

/***/ "./src/menu/index.js":
/*!***************************!*\
  !*** ./src/menu/index.js ***!
  \***************************/
/*! no exports provided */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _wordpress_element__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @wordpress/element */ "@wordpress/element");
/* harmony import */ var _wordpress_element__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _wordpress_blocks__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @wordpress/blocks */ "@wordpress/blocks");
/* harmony import */ var _wordpress_blocks__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_wordpress_blocks__WEBPACK_IMPORTED_MODULE_1__);
/* harmony import */ var _wordpress_data__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! @wordpress/data */ "@wordpress/data");
/* harmony import */ var _wordpress_data__WEBPACK_IMPORTED_MODULE_2___default = /*#__PURE__*/__webpack_require__.n(_wordpress_data__WEBPACK_IMPORTED_MODULE_2__);
/* harmony import */ var _wordpress_block_editor__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! @wordpress/block-editor */ "@wordpress/block-editor");
/* harmony import */ var _wordpress_block_editor__WEBPACK_IMPORTED_MODULE_3___default = /*#__PURE__*/__webpack_require__.n(_wordpress_block_editor__WEBPACK_IMPORTED_MODULE_3__);
/* harmony import */ var _wordpress_components__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! @wordpress/components */ "@wordpress/components");
/* harmony import */ var _wordpress_components__WEBPACK_IMPORTED_MODULE_4___default = /*#__PURE__*/__webpack_require__.n(_wordpress_components__WEBPACK_IMPORTED_MODULE_4__);
/* harmony import */ var _pizzeria_icon_svg__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! ../pizzeria-icon.svg */ "./src/pizzeria-icon.svg");


 // se usa para hacer la consulta a la REST API


 // Logo para el bloque


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

Object(_wordpress_blocks__WEBPACK_IMPORTED_MODULE_1__["registerBlockType"])('lapizzeria/menu', {
  title: 'La Pizzeria Menu',
  icon: {
    src: _pizzeria_icon_svg__WEBPACK_IMPORTED_MODULE_5__["ReactComponent"]
  },
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
  edit: Object(_wordpress_data__WEBPACK_IMPORTED_MODULE_2__["withSelect"])((select, props) => {
    // extraer los valores
    const {
      attributes: {
        cantidadMostrar,
        categoriaMenu,
        tituloBloque
      },
      setAttributes
    } = props;

    const onChangeCantidadMostrar = nuevaCantidad => {
      setAttributes({
        cantidadMostrar: parseInt(nuevaCantidad)
      });
    };

    const onChangeCategoriaMenu = nuevaCategoria => {
      setAttributes({
        categoriaMenu: nuevaCategoria
      });
    };

    const onChangeTituloBloque = nuevoTitulo => {
      setAttributes({
        tituloBloque: nuevoTitulo
      });
    };

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
  })(({
    categorias,
    especialidades,
    onChangeCantidadMostrar,
    onChangeCategoriaMenu,
    onChangeTituloBloque,
    props
  }) => {
    // extraer los props
    const {
      attributes: {
        cantidadMostrar,
        categoriaMenu,
        tituloBloque
      }
    } = props; // verificar especialidades

    if (!especialidades) {
      return 'Cargando...';
    } // si no hay especialidades


    if (especialidades && especialidades.length === 0) {
      return 'No hay resultados';
    } // verificar categorias


    if (!categorias) {
      console.log('No hay categorias');
      return null;
    } // si no hay categorias


    if (categorias && categorias.length === 0) {
      console.log('No hay resultados');
      return null;
    } // Generar label y value a categorias


    if (categorias && categorias.length != 0) {
      categorias.forEach(categoria => {
        categoria['label'] = categoria.name;
        categoria['value'] = categoria.id;
      });
    } // Arreglo con valores por default (para agregar la opción Todos a las categorias)
    // const opcionDefault = [{ value: '', label: ' -- Todos -- '}];
    // const listadoCategorias = [...opcionDefault, ...categorias ];		


    return Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["Fragment"], null, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])(_wordpress_block_editor__WEBPACK_IMPORTED_MODULE_3__["InspectorControls"], null, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])(_wordpress_components__WEBPACK_IMPORTED_MODULE_4__["PanelBody"], {
      title: 'Ajustes Cantidad',
      initialOpen: true
    }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("div", {
      className: "components-base-control"
    }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("div", {
      className: "components-base-control__field"
    }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("label", {
      className: "components-base-control__label"
    }, "Cantidad a Mostrar"), Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])(_wordpress_components__WEBPACK_IMPORTED_MODULE_4__["RangeControl"], {
      onChange: onChangeCantidadMostrar,
      min: 2,
      max: 10,
      value: cantidadMostrar || 6
    })))), Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])(_wordpress_components__WEBPACK_IMPORTED_MODULE_4__["PanelBody"], {
      title: 'Ajustes Categorias',
      initialOpen: false
    }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("div", {
      className: "components-base-control"
    }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("div", {
      className: "components-base-control__field"
    }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("label", {
      className: "components-base-control__label"
    }, "Categoria de especialidad"), Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])(_wordpress_components__WEBPACK_IMPORTED_MODULE_4__["SelectControl"], {
      options: categorias,
      onChange: onChangeCategoriaMenu,
      value: categoriaMenu
    })))), Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])(_wordpress_components__WEBPACK_IMPORTED_MODULE_4__["PanelBody"], {
      title: 'Titulo Bloque',
      initialOpen: false
    }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("div", {
      className: "components-base-control"
    }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("div", {
      className: "components-base-control__field"
    }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("label", {
      className: "components-base-control__label"
    }, "Titulo Bloque"), Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])(_wordpress_components__WEBPACK_IMPORTED_MODULE_4__["TextControl"], {
      onChange: onChangeTituloBloque,
      value: tituloBloque
    }))))), Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("h2", {
      className: "titulo-menu"
    }, tituloBloque), Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("ul", {
      className: "nuestro-menu"
    }, especialidades.map(especialidad => Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("li", null, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("img", {
      src: especialidad.imagen_destacada
    }), Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("div", {
      className: "platillo"
    }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("div", {
      className: "precio-platillo"
    }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("h3", null, especialidad.title.rendered), Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("p", null, "$ ", especialidad.precio))), Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("div", {
      className: "contenido-platillo"
    }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("p", null, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])(_wordpress_block_editor__WEBPACK_IMPORTED_MODULE_3__["RichText"].Content, {
      value: especialidad.content.rendered
    })))))));
  }),
  save: () => {
    return null; // no se retorna nada por aquí, el retorno se hace en el callback que esta en lapizzeria-gutenberg.php
  }
});

/***/ }),

/***/ "./src/pizzeria-icon.svg":
/*!*******************************!*\
  !*** ./src/pizzeria-icon.svg ***!
  \*******************************/
/*! exports provided: default, ReactComponent */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "ReactComponent", function() { return SvgPizzeriaIcon; });
/* harmony import */ var react__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! react */ "react");
/* harmony import */ var react__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(react__WEBPACK_IMPORTED_MODULE_0__);
var _path, _g;

function _extends() { _extends = Object.assign || function (target) { for (var i = 1; i < arguments.length; i++) { var source = arguments[i]; for (var key in source) { if (Object.prototype.hasOwnProperty.call(source, key)) { target[key] = source[key]; } } } return target; }; return _extends.apply(this, arguments); }



function SvgPizzeriaIcon(props) {
  return /*#__PURE__*/react__WEBPACK_IMPORTED_MODULE_0__["createElement"]("svg", _extends({
    xmlns: "http://www.w3.org/2000/svg",
    width: 25.16,
    height: 23.954
  }, props), _path || (_path = /*#__PURE__*/react__WEBPACK_IMPORTED_MODULE_0__["createElement"]("path", {
    fill: "#1B6606",
    d: "M-.405-1.612h27.09v27.255H-.405z"
  })), _g || (_g = /*#__PURE__*/react__WEBPACK_IMPORTED_MODULE_0__["createElement"]("g", {
    fill: "#FFF"
  }, /*#__PURE__*/react__WEBPACK_IMPORTED_MODULE_0__["createElement"]("path", {
    d: "M2.965 18.784V5.228h3.293v10.703h5.246v2.853H2.965zM23.316 9.402c0 .792-.146 1.459-.439 2.001a3.62 3.62 0 01-1.188 1.312 5.255 5.255 0 01-1.723.728 8.844 8.844 0 01-2.029.229H16.31v5.112h-3.275V5.228h4.979c.74 0 1.433.073 2.077.22.645.148 1.206.383 1.685.709.479.325.855.754 1.131 1.282.273.53.409 1.185.409 1.963zm-3.273.018c0-.319-.063-.581-.191-.785s-.3-.362-.517-.478a2.165 2.165 0 00-.737-.229 6.053 6.053 0 00-.852-.058H16.31v3.197h1.377c.307 0 .601-.025.882-.076a2.39 2.39 0 00.756-.269c.224-.127.398-.297.526-.508.128-.209.192-.473.192-.794z"
  }))));
}

/* harmony default export */ __webpack_exports__["default"] = ("data:image/svg+xml;base64,dmFyIF9wYXRoLCBfZzsKCmZ1bmN0aW9uIF9leHRlbmRzKCkgeyBfZXh0ZW5kcyA9IE9iamVjdC5hc3NpZ24gfHwgZnVuY3Rpb24gKHRhcmdldCkgeyBmb3IgKHZhciBpID0gMTsgaSA8IGFyZ3VtZW50cy5sZW5ndGg7IGkrKykgeyB2YXIgc291cmNlID0gYXJndW1lbnRzW2ldOyBmb3IgKHZhciBrZXkgaW4gc291cmNlKSB7IGlmIChPYmplY3QucHJvdG90eXBlLmhhc093blByb3BlcnR5LmNhbGwoc291cmNlLCBrZXkpKSB7IHRhcmdldFtrZXldID0gc291cmNlW2tleV07IH0gfSB9IHJldHVybiB0YXJnZXQ7IH07IHJldHVybiBfZXh0ZW5kcy5hcHBseSh0aGlzLCBhcmd1bWVudHMpOyB9CgppbXBvcnQgKiBhcyBSZWFjdCBmcm9tICJyZWFjdCI7CgpmdW5jdGlvbiBTdmdQaXp6ZXJpYUljb24ocHJvcHMpIHsKICByZXR1cm4gLyojX19QVVJFX18qL1JlYWN0LmNyZWF0ZUVsZW1lbnQoInN2ZyIsIF9leHRlbmRzKHsKICAgIHhtbG5zOiAiaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciLAogICAgd2lkdGg6IDI1LjE2LAogICAgaGVpZ2h0OiAyMy45NTQKICB9LCBwcm9wcyksIF9wYXRoIHx8IChfcGF0aCA9IC8qI19fUFVSRV9fKi9SZWFjdC5jcmVhdGVFbGVtZW50KCJwYXRoIiwgewogICAgZmlsbDogIiMxQjY2MDYiLAogICAgZDogIk0tLjQwNS0xLjYxMmgyNy4wOXYyNy4yNTVILS40MDV6IgogIH0pKSwgX2cgfHwgKF9nID0gLyojX19QVVJFX18qL1JlYWN0LmNyZWF0ZUVsZW1lbnQoImciLCB7CiAgICBmaWxsOiAiI0ZGRiIKICB9LCAvKiNfX1BVUkVfXyovUmVhY3QuY3JlYXRlRWxlbWVudCgicGF0aCIsIHsKICAgIGQ6ICJNMi45NjUgMTguNzg0VjUuMjI4aDMuMjkzdjEwLjcwM2g1LjI0NnYyLjg1M0gyLjk2NXpNMjMuMzE2IDkuNDAyYzAgLjc5Mi0uMTQ2IDEuNDU5LS40MzkgMi4wMDFhMy42MiAzLjYyIDAgMDEtMS4xODggMS4zMTIgNS4yNTUgNS4yNTUgMCAwMS0xLjcyMy43MjggOC44NDQgOC44NDQgMCAwMS0yLjAyOS4yMjlIMTYuMzF2NS4xMTJoLTMuMjc1VjUuMjI4aDQuOTc5Yy43NCAwIDEuNDMzLjA3MyAyLjA3Ny4yMi42NDUuMTQ4IDEuMjA2LjM4MyAxLjY4NS43MDkuNDc5LjMyNS44NTUuNzU0IDEuMTMxIDEuMjgyLjI3My41My40MDkgMS4xODUuNDA5IDEuOTYzem0tMy4yNzMuMDE4YzAtLjMxOS0uMDYzLS41ODEtLjE5MS0uNzg1cy0uMy0uMzYyLS41MTctLjQ3OGEyLjE2NSAyLjE2NSAwIDAwLS43MzctLjIyOSA2LjA1MyA2LjA1MyAwIDAwLS44NTItLjA1OEgxNi4zMXYzLjE5N2gxLjM3N2MuMzA3IDAgLjYwMS0uMDI1Ljg4Mi0uMDc2YTIuMzkgMi4zOSAwIDAwLjc1Ni0uMjY5Yy4yMjQtLjEyNy4zOTgtLjI5Ny41MjYtLjUwOC4xMjgtLjIwOS4xOTItLjQ3My4xOTItLjc5NHoiCiAgfSkpKSk7Cn0KCmV4cG9ydCBkZWZhdWx0ICJkYXRhOmltYWdlL3N2Zyt4bWw7YmFzZTY0LFBEOTRiV3dnZG1WeWMybHZiajBpTVM0d0lpQmxibU52WkdsdVp6MGlkWFJtTFRnaVB6NE5DandoTFMwZ1IyVnVaWEpoZEc5eU9pQkJaRzlpWlNCSmJHeDFjM1J5WVhSdmNpQXhOaTR3TGpBc0lGTldSeUJGZUhCdmNuUWdVR3gxWnkxSmJpQXVJRk5XUnlCV1pYSnphVzl1T2lBMkxqQXdJRUoxYVd4a0lEQXBJQ0F0TFQ0TkNqd2hSRTlEVkZsUVJTQnpkbWNnVUZWQ1RFbERJQ0l0THk5WE0wTXZMMFJVUkNCVFZrY2dNUzR4THk5RlRpSWdJbWgwZEhBNkx5OTNkM2N1ZHpNdWIzSm5MMGR5WVhCb2FXTnpMMU5XUnk4eExqRXZSRlJFTDNOMlp6RXhMbVIwWkNJK0RRbzhjM1puSUhabGNuTnBiMjQ5SWpFdU1TSWdhV1E5SWtOaGNHRmZNU0lnZUcxc2JuTTlJbWgwZEhBNkx5OTNkM2N1ZHpNdWIzSm5Mekl3TURBdmMzWm5JaUI0Yld4dWN6cDRiR2x1YXowaWFIUjBjRG92TDNkM2R5NTNNeTV2Y21jdk1UazVPUzk0YkdsdWF5SWdlRDBpTUhCNElpQjVQU0l3Y0hnaURRb0pJSGRwWkhSb1BTSXlOUzR4Tm5CNElpQm9aV2xuYUhROUlqSXpMamsxTkhCNElpQjJhV1YzUW05NFBTSXdJREFnTWpVdU1UWWdNak11T1RVMElpQmxibUZpYkdVdFltRmphMmR5YjNWdVpEMGlibVYzSURBZ01DQXlOUzR4TmlBeU15NDVOVFFpSUhodGJEcHpjR0ZqWlQwaWNISmxjMlZ5ZG1VaVBnMEtQSEpsWTNRZ2VEMGlMVEF1TkRBMUlpQjVQU0l0TVM0Mk1USWlJR1pwYkd3OUlpTXhRalkyTURZaUlIZHBaSFJvUFNJeU55NHdPU0lnYUdWcFoyaDBQU0l5Tnk0eU5UVWlMejROQ2p4blBnMEtDVHh3WVhSb0lHWnBiR3c5SWlOR1JrWkdSa1lpSUdROUlrMHlMamsyTlN3eE9DNDNPRFJXTlM0eU1qaG9NeTR5T1ROMk1UQXVOekF6YURVdU1qUTJkakl1T0RVelNESXVPVFkxZWlJdlBnMEtDVHh3WVhSb0lHWnBiR3c5SWlOR1JrWkdSa1lpSUdROUlrMHlNeTR6TVRZc09TNDBNREpqTUN3d0xqYzVNaTB3TGpFME5pd3hMalExT1Mwd0xqUXpPU3d5TGpBd01XTXRNQzR5T1RRc01DNDFOREl0TUM0Mk9Ea3NNQzQ1T0MweExqRTRPQ3d4TGpNeE1nMEtDUWxqTFRBdU5EazRMREF1TXpNeUxURXVNRGN5TERBdU5UYzBMVEV1TnpJekxEQXVOekk0WXkwd0xqWTFNU3d3TGpFMU15MHhMak15T0N3d0xqSXlPUzB5TGpBeU9Td3dMakl5T1dndE1TNDJNamQyTlM0eE1USm9MVE11TWpjMVZqVXVNakk0YURRdU9UYzVEUW9KQ1dNd0xqYzBMREFzTVM0ME16TXNNQzR3TnpNc01pNHdOemNzTUM0eU1tTXdMalkwTlN3d0xqRTBPQ3d4TGpJd05pd3dMak00TXl3eExqWTROU3d3TGpjd09XTXdMalEzT1N3d0xqTXlOU3d3TGpnMU5Td3dMamMxTkN3eExqRXpNU3d4TGpJNE1nMEtDUWxETWpNdU1UZ3NOeTQ1Tmprc01qTXVNekUyTERndU5qSTBMREl6TGpNeE5pdzVMalF3TW5vZ1RUSXdMakEwTXl3NUxqUXlZekF0TUM0ek1Ua3RNQzR3TmpNdE1DNDFPREV0TUM0eE9URXRNQzQzT0RWekxUQXVNeTB3TGpNMk1pMHdMalV4Tnkwd0xqUTNPQTBLQ1FsakxUQXVNakU0TFRBdU1URTJMVEF1TkRZeUxUQXVNVGt5TFRBdU56TTNMVEF1TWpJNVl5MHdMakkzTkMwd0xqQXpPUzB3TGpVMU9TMHdMakExT0Mwd0xqZzFNaTB3TGpBMU9HZ3RNUzQwTXpaMk15NHhPVGRvTVM0ek56ZGpNQzR6TURjc01Dd3dMall3TVMwd0xqQXlOU3d3TGpnNE1pMHdMakEzTmcwS0NRbGpNQzR5T0Mwd0xqQTFNaXd3TGpVek1pMHdMakUwTVN3d0xqYzFOaTB3TGpJMk9XTXdMakl5TkMwd0xqRXlOeXd3TGpNNU9DMHdMakk1Tnl3d0xqVXlOaTB3TGpVd09FTXhPUzQ1Tnprc01UQXVNREExTERJd0xqQTBNeXc1TGpjME1Td3lNQzR3TkRNc09TNDBNbm9pTHo0TkNqd3ZaejROQ2p3dmMzWm5QZzBLIjsKZXhwb3J0IHsgU3ZnUGl6emVyaWFJY29uIGFzIFJlYWN0Q29tcG9uZW50IH07");


/***/ }),

/***/ "@wordpress/block-editor":
/*!*************************************!*\
  !*** external ["wp","blockEditor"] ***!
  \*************************************/
/*! no static exports found */
/***/ (function(module, exports) {

(function() { module.exports = window["wp"]["blockEditor"]; }());

/***/ }),

/***/ "@wordpress/blocks":
/*!********************************!*\
  !*** external ["wp","blocks"] ***!
  \********************************/
/*! no static exports found */
/***/ (function(module, exports) {

(function() { module.exports = window["wp"]["blocks"]; }());

/***/ }),

/***/ "@wordpress/components":
/*!************************************!*\
  !*** external ["wp","components"] ***!
  \************************************/
/*! no static exports found */
/***/ (function(module, exports) {

(function() { module.exports = window["wp"]["components"]; }());

/***/ }),

/***/ "@wordpress/data":
/*!******************************!*\
  !*** external ["wp","data"] ***!
  \******************************/
/*! no static exports found */
/***/ (function(module, exports) {

(function() { module.exports = window["wp"]["data"]; }());

/***/ }),

/***/ "@wordpress/element":
/*!*********************************!*\
  !*** external ["wp","element"] ***!
  \*********************************/
/*! no static exports found */
/***/ (function(module, exports) {

(function() { module.exports = window["wp"]["element"]; }());

/***/ }),

/***/ "react":
/*!************************!*\
  !*** external "React" ***!
  \************************/
/*! no static exports found */
/***/ (function(module, exports) {

(function() { module.exports = window["React"]; }());

/***/ })

/******/ });
//# sourceMappingURL=index.js.map