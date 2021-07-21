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

/***/ "./node_modules/@babel/runtime/helpers/arrayLikeToArray.js":
/*!*****************************************************************!*\
  !*** ./node_modules/@babel/runtime/helpers/arrayLikeToArray.js ***!
  \*****************************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

function _arrayLikeToArray(arr, len) {
  if (len == null || len > arr.length) len = arr.length;

  for (var i = 0, arr2 = new Array(len); i < len; i++) {
    arr2[i] = arr[i];
  }

  return arr2;
}

module.exports = _arrayLikeToArray;
module.exports["default"] = module.exports, module.exports.__esModule = true;

/***/ }),

/***/ "./node_modules/@babel/runtime/helpers/arrayWithoutHoles.js":
/*!******************************************************************!*\
  !*** ./node_modules/@babel/runtime/helpers/arrayWithoutHoles.js ***!
  \******************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

var arrayLikeToArray = __webpack_require__(/*! ./arrayLikeToArray.js */ "./node_modules/@babel/runtime/helpers/arrayLikeToArray.js");

function _arrayWithoutHoles(arr) {
  if (Array.isArray(arr)) return arrayLikeToArray(arr);
}

module.exports = _arrayWithoutHoles;
module.exports["default"] = module.exports, module.exports.__esModule = true;

/***/ }),

/***/ "./node_modules/@babel/runtime/helpers/iterableToArray.js":
/*!****************************************************************!*\
  !*** ./node_modules/@babel/runtime/helpers/iterableToArray.js ***!
  \****************************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

function _iterableToArray(iter) {
  if (typeof Symbol !== "undefined" && iter[Symbol.iterator] != null || iter["@@iterator"] != null) return Array.from(iter);
}

module.exports = _iterableToArray;
module.exports["default"] = module.exports, module.exports.__esModule = true;

/***/ }),

/***/ "./node_modules/@babel/runtime/helpers/nonIterableSpread.js":
/*!******************************************************************!*\
  !*** ./node_modules/@babel/runtime/helpers/nonIterableSpread.js ***!
  \******************************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

function _nonIterableSpread() {
  throw new TypeError("Invalid attempt to spread non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.");
}

module.exports = _nonIterableSpread;
module.exports["default"] = module.exports, module.exports.__esModule = true;

/***/ }),

/***/ "./node_modules/@babel/runtime/helpers/toConsumableArray.js":
/*!******************************************************************!*\
  !*** ./node_modules/@babel/runtime/helpers/toConsumableArray.js ***!
  \******************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

var arrayWithoutHoles = __webpack_require__(/*! ./arrayWithoutHoles.js */ "./node_modules/@babel/runtime/helpers/arrayWithoutHoles.js");

var iterableToArray = __webpack_require__(/*! ./iterableToArray.js */ "./node_modules/@babel/runtime/helpers/iterableToArray.js");

var unsupportedIterableToArray = __webpack_require__(/*! ./unsupportedIterableToArray.js */ "./node_modules/@babel/runtime/helpers/unsupportedIterableToArray.js");

var nonIterableSpread = __webpack_require__(/*! ./nonIterableSpread.js */ "./node_modules/@babel/runtime/helpers/nonIterableSpread.js");

function _toConsumableArray(arr) {
  return arrayWithoutHoles(arr) || iterableToArray(arr) || unsupportedIterableToArray(arr) || nonIterableSpread();
}

module.exports = _toConsumableArray;
module.exports["default"] = module.exports, module.exports.__esModule = true;

/***/ }),

/***/ "./node_modules/@babel/runtime/helpers/unsupportedIterableToArray.js":
/*!***************************************************************************!*\
  !*** ./node_modules/@babel/runtime/helpers/unsupportedIterableToArray.js ***!
  \***************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

var arrayLikeToArray = __webpack_require__(/*! ./arrayLikeToArray.js */ "./node_modules/@babel/runtime/helpers/arrayLikeToArray.js");

function _unsupportedIterableToArray(o, minLen) {
  if (!o) return;
  if (typeof o === "string") return arrayLikeToArray(o, minLen);
  var n = Object.prototype.toString.call(o).slice(8, -1);
  if (n === "Object" && o.constructor) n = o.constructor.name;
  if (n === "Map" || n === "Set") return Array.from(o);
  if (n === "Arguments" || /^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(n)) return arrayLikeToArray(o, minLen);
}

module.exports = _unsupportedIterableToArray;
module.exports["default"] = module.exports, module.exports.__esModule = true;

/***/ }),

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
  edit: function edit(props) {
    // Extraer el contenido desde props
    var _props$attributes = props.attributes,
        headingBox = _props$attributes.headingBox,
        textBox = _props$attributes.textBox,
        colorFondo = _props$attributes.colorFondo,
        colorTexto = _props$attributes.colorTexto,
        alineacionContenido = _props$attributes.alineacionContenido,
        setAttributes = props.setAttributes; // setAttributes es una función de Gutenberg que guarda lo que leamos en la base de datos

    var onChangeHeadingBox = function onChangeHeadingBox(nuevoHeading) {
      // esta función permite leer lo que el usuario escribe en la caja del encabezado
      setAttributes({
        headingBox: nuevoHeading
      }); // guardamos en headingBox lo que leamos en nuevoHeading
    };

    var onChangeTextBox = function onChangeTextBox(nuevoTexto) {
      setAttributes({
        textBox: nuevoTexto
      });
    };

    var onChangeColorFondo = function onChangeColorFondo(nuevoColor) {
      setAttributes({
        colorFondo: nuevoColor
      });
    };

    var onChangeColorTexto = function onChangeColorTexto(nuevoColor) {
      setAttributes({
        colorTexto: nuevoColor
      });
    };

    var onChangeAlinearContenido = function onChangeAlinearContenido(nuevaAlineacion) {
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
  save: function save(props) {
    // Extraer el contenido desde props
    var _props$attributes2 = props.attributes,
        headingBox = _props$attributes2.headingBox,
        textBox = _props$attributes2.textBox,
        colorFondo = _props$attributes2.colorFondo,
        colorTexto = _props$attributes2.colorTexto,
        alineacionContenido = _props$attributes2.alineacionContenido; // setAttributes es una función de Gutenberg que guarda lo que leamos en la base de datos

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

/***/ "./src/galeria/index.js":
/*!******************************!*\
  !*** ./src/galeria/index.js ***!
  \******************************/
/*! no exports provided */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _babel_runtime_helpers_toConsumableArray__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @babel/runtime/helpers/toConsumableArray */ "./node_modules/@babel/runtime/helpers/toConsumableArray.js");
/* harmony import */ var _babel_runtime_helpers_toConsumableArray__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_babel_runtime_helpers_toConsumableArray__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _wordpress_element__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @wordpress/element */ "@wordpress/element");
/* harmony import */ var _wordpress_element__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_wordpress_element__WEBPACK_IMPORTED_MODULE_1__);
/* harmony import */ var _wordpress_blocks__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! @wordpress/blocks */ "@wordpress/blocks");
/* harmony import */ var _wordpress_blocks__WEBPACK_IMPORTED_MODULE_2___default = /*#__PURE__*/__webpack_require__.n(_wordpress_blocks__WEBPACK_IMPORTED_MODULE_2__);
/* harmony import */ var _wordpress_block_editor__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! @wordpress/block-editor */ "@wordpress/block-editor");
/* harmony import */ var _wordpress_block_editor__WEBPACK_IMPORTED_MODULE_3___default = /*#__PURE__*/__webpack_require__.n(_wordpress_block_editor__WEBPACK_IMPORTED_MODULE_3__);
/* harmony import */ var _wordpress_components__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! @wordpress/components */ "@wordpress/components");
/* harmony import */ var _wordpress_components__WEBPACK_IMPORTED_MODULE_4___default = /*#__PURE__*/__webpack_require__.n(_wordpress_components__WEBPACK_IMPORTED_MODULE_4__);
/* harmony import */ var _pizzeria_icon_svg__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! ../pizzeria-icon.svg */ "./src/pizzeria-icon.svg");




 // Logo para el bloque


Object(_wordpress_blocks__WEBPACK_IMPORTED_MODULE_2__["registerBlockType"])('lapizzeria/galeria', {
  title: 'La Pizzeria Galeria',
  icon: {
    src: _pizzeria_icon_svg__WEBPACK_IMPORTED_MODULE_5__["ReactComponent"]
  },
  category: 'lapizzeria',
  attributes: {
    imagenes: {
      type: 'array'
    }
  },
  edit: function edit(props) {
    //extraer los valores de props
    var _props$attributes$ima = props.attributes.imagenes,
        imagenes = _props$attributes$ima === void 0 ? [] : _props$attributes$ima,
        setAttributes = props.setAttributes;

    var borrarImagen = function borrarImagen(imagenIndex) {
      var nuevasImagenes = imagenes.filter(function (imagen, index) {
        return index !== imagenIndex;
      });
      setAttributes({
        imagenes: nuevasImagenes
      });
    };

    var onSeleccionarNuevaImagen = function onSeleccionarNuevaImagen(nuevaImagen) {
      var imagen = {
        thumb: nuevaImagen.sizes.medium.url,
        full: nuevaImagen.sizes.full.url,
        id: nuevaImagen.id
      };
      setAttributes({
        imagenes: [].concat(_babel_runtime_helpers_toConsumableArray__WEBPACK_IMPORTED_MODULE_0___default()(imagenes), [imagen])
      });
    };

    return Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_1__["createElement"])("div", {
      className: "galeria-pizzeria"
    }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_1__["createElement"])(_wordpress_block_editor__WEBPACK_IMPORTED_MODULE_3__["MediaUpload"], {
      onSelect: onSeleccionarNuevaImagen,
      type: "image",
      render: function render(_ref) {
        var open = _ref.open;
        return Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_1__["createElement"])(_wordpress_components__WEBPACK_IMPORTED_MODULE_4__["Button"], {
          className: "lapizzeria-agregar-imagen",
          onClick: open,
          icon: "format-image",
          showTooltip: "true",
          label: "Cambiar Imagen"
        });
      }
    }), Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_1__["createElement"])("ul", {
      className: "listado-imagenes"
    }, imagenes.map(function (imagen, index) {
      return Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_1__["createElement"])("li", {
        className: "imagen"
      }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_1__["createElement"])("div", {
        className: "borrar-imagen",
        onClick: function onClick() {
          return borrarImagen(index);
        }
      }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_1__["createElement"])("span", {
        className: "dashicons dashicons-trash"
      })), Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_1__["createElement"])("img", {
        src: imagen.thumb
      }));
    })));
  },
  save: function save(props) {
    var _props$attributes$ima2 = props.attributes.imagenes,
        imagenes = _props$attributes$ima2 === void 0 ? [] : _props$attributes$ima2;

    if (imagenes.length === 0) {
      return Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_1__["createElement"])("p", null, "No hay im\xE1genes");
    }

    return Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_1__["createElement"])("div", {
      className: "galeria-pizzeria"
    }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_1__["createElement"])("ul", {
      className: "listado-imagenes"
    }, imagenes.map(function (imagen) {
      return Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_1__["createElement"])("li", {
        className: "imagen"
      }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_1__["createElement"])("a", {
        href: imagen.full,
        "data-lightbox": "galeria"
      }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_1__["createElement"])("img", {
        src: imagen.thumb
      })));
    })));
  }
});

/***/ }),

/***/ "./src/hero/index.js":
/*!***************************!*\
  !*** ./src/hero/index.js ***!
  \***************************/
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


Object(_wordpress_blocks__WEBPACK_IMPORTED_MODULE_1__["registerBlockType"])('lapizzeria/hero', {
  title: 'La Pizzeria Hero',
  icon: {
    src: _pizzeria_icon_svg__WEBPACK_IMPORTED_MODULE_4__["ReactComponent"]
  },
  category: 'lapizzeria',
  attributes: {
    imagenHero: {
      type: 'string',
      selector: '.hero-block'
    },
    tituloHero: {
      type: 'string',
      source: 'html',
      selector: '.hero-block h1'
    },
    textoHero: {
      type: 'string',
      source: 'html',
      selector: '.hero-block p'
    },
    urlHero: {
      type: 'string',
      source: 'attribute',
      attribute: 'href'
    },
    alinearContenido: {
      type: 'string',
      default: 'center'
    },
    alturaHero: {
      type: 'number'
    }
  },
  supports: {
    align: ['wide', 'full'] // Para soportar el hero a tamaño ancho o completo de pantalla

  },
  edit: function edit(props) {
    // extraer los valores
    var _props$attributes = props.attributes,
        imagenHero = _props$attributes.imagenHero,
        tituloHero = _props$attributes.tituloHero,
        textoHero = _props$attributes.textoHero,
        urlHero = _props$attributes.urlHero,
        alinearContenido = _props$attributes.alinearContenido,
        alturaHero = _props$attributes.alturaHero,
        setAttributes = props.setAttributes;

    var onSeleccionarImagen = function onSeleccionarImagen(nuevaImagen) {
      setAttributes({
        imagenHero: nuevaImagen.sizes.full.url
      });
    };

    var onChangeTitulo = function onChangeTitulo(nuevoTitulo) {
      setAttributes({
        tituloHero: nuevoTitulo
      });
    };

    var onChangeTexto = function onChangeTexto(nuevoTexto) {
      setAttributes({
        textoHero: nuevoTexto
      });
    };

    var onChangeUrl = function onChangeUrl(nuevaUrl) {
      setAttributes({
        urlHero: nuevaUrl
      });
    };

    var onChangeAlinearContenido = function onChangeAlinearContenido(nuevaAlineacion) {
      setAttributes({
        alinearContenido: nuevaAlineacion
      });
    };

    var onChangeAlturaHero = function onChangeAlturaHero(nuevaAltura) {
      setAttributes({
        alturaHero: nuevaAltura
      });
    };

    return Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["Fragment"], null, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])(_wordpress_block_editor__WEBPACK_IMPORTED_MODULE_2__["InspectorControls"], null, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])(_wordpress_components__WEBPACK_IMPORTED_MODULE_3__["PanelBody"], {
      title: 'Altura Hero',
      initialOpen: true
    }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("div", {
      className: "components-base-control"
    }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("div", {
      className: "components-base-control__field"
    }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("label", {
      className: "components-base-control__label"
    }, "Altura en Pixeles"), Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])(_wordpress_components__WEBPACK_IMPORTED_MODULE_3__["TextControl"], {
      type: "number",
      max: 700,
      min: 300,
      step: 10,
      value: alturaHero || 500,
      onChange: onChangeAlturaHero
    }))))), Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("div", {
      className: "hero-block",
      style: {
        backgroundImage: "linear-gradient(rgba(0,0,0,.75), rgba(0,0,0,.75)), url( ".concat(imagenHero, " )"),
        textAlign: alinearContenido,
        height: "".concat(alturaHero || 500, "px")
      }
    }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])(_wordpress_block_editor__WEBPACK_IMPORTED_MODULE_2__["BlockControls"], null, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])(_wordpress_block_editor__WEBPACK_IMPORTED_MODULE_2__["AlignmentToolbar"], {
      onChange: onChangeAlinearContenido,
      value: alinearContenido
    })), Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])(_wordpress_block_editor__WEBPACK_IMPORTED_MODULE_2__["MediaUpload"], {
      onSelect: onSeleccionarImagen,
      type: "image",
      render: function render(_ref) {
        var open = _ref.open;
        return Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])(_wordpress_components__WEBPACK_IMPORTED_MODULE_3__["Button"], {
          className: "lapizzeria-agregar-imagen",
          onClick: open,
          icon: "format-image",
          showTooltip: "true",
          label: "Cambiar Imagen"
        });
      }
    }), Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("div", {
      className: "contenido-hero"
    }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("h1", {
      className: "titulo"
    }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])(_wordpress_block_editor__WEBPACK_IMPORTED_MODULE_2__["RichText"], {
      placeholder: 'Agrega el titulo del Hero',
      onChange: onChangeTitulo,
      value: tituloHero
    })), Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("p", null, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])(_wordpress_block_editor__WEBPACK_IMPORTED_MODULE_2__["RichText"], {
      placeholder: 'Agrega el texto del Hero',
      onChange: onChangeTexto,
      value: textoHero
    })), Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("div", null, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("a", {
      href: urlHero,
      className: "boton boton-primario"
    }, "Leer M\xE1s")), Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])(_wordpress_block_editor__WEBPACK_IMPORTED_MODULE_2__["URLInputButton"], {
      onChange: onChangeUrl,
      url: urlHero
    }))));
  },
  save: function save(props) {
    // extraer los valores
    var _props$attributes2 = props.attributes,
        imagenHero = _props$attributes2.imagenHero,
        tituloHero = _props$attributes2.tituloHero,
        textoHero = _props$attributes2.textoHero,
        urlHero = _props$attributes2.urlHero,
        alinearContenido = _props$attributes2.alinearContenido,
        alturaHero = _props$attributes2.alturaHero;
    return Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("div", {
      className: "hero-block",
      style: {
        backgroundImage: "linear-gradient(rgba(0,0,0,.75), rgba(0,0,0,.75)), url( ".concat(imagenHero, " )"),
        textAlign: alinearContenido,
        height: "".concat(alturaHero || 500, "px")
      }
    }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("div", {
      className: "contenido-hero"
    }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("h1", {
      className: "titulo"
    }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])(_wordpress_block_editor__WEBPACK_IMPORTED_MODULE_2__["RichText"].Content, {
      value: tituloHero
    })), Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("p", {
      className: "titulo"
    }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])(_wordpress_block_editor__WEBPACK_IMPORTED_MODULE_2__["RichText"].Content, {
      value: textoHero
    })), Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("div", null, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("a", {
      href: urlHero,
      className: "boton boton-primario"
    }, "Leer M\xE1s"))));
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
/* harmony import */ var _galeria__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./galeria */ "./src/galeria/index.js");
/* harmony import */ var _hero__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ./hero */ "./src/hero/index.js");
/* harmony import */ var _textoimagen__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! ./textoimagen */ "./src/textoimagen/index.js");






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
      type: 'number'
    },
    tituloBloque: {
      type: 'string',
      default: 'Titulo Bloque'
    }
  },
  edit: Object(_wordpress_data__WEBPACK_IMPORTED_MODULE_2__["withSelect"])(function (select, props) {
    // extraer los valores
    var _props$attributes = props.attributes,
        cantidadMostrar = _props$attributes.cantidadMostrar,
        categoriaMenu = _props$attributes.categoriaMenu,
        setAttributes = props.setAttributes;

    var onChangeCantidadMostrar = function onChangeCantidadMostrar(nuevaCantidad) {
      setAttributes({
        cantidadMostrar: parseInt(nuevaCantidad)
      });
    };

    var onChangeCategoriaMenu = function onChangeCategoriaMenu(nuevaCategoria) {
      setAttributes({
        categoriaMenu: nuevaCategoria
      });
    };

    var onChangeTituloBloque = function onChangeTituloBloque(nuevoTitulo) {
      setAttributes({
        tituloBloque: nuevoTitulo
      });
    };

    return {
      // Enviar una petición a la api
      categorias: select("core").getEntityRecords('taxonomy', 'categoria-menu'),
      especialidades: select("core").getEntityRecords('postType', 'especialidades', {
        'categoria-menu': categoriaMenu,
        per_page: cantidadMostrar || 5
      }),
      onChangeCantidadMostrar: onChangeCantidadMostrar,
      onChangeCategoriaMenu: onChangeCategoriaMenu,
      onChangeTituloBloque: onChangeTituloBloque,
      props: props
    };
  })(function (_ref) {
    var categorias = _ref.categorias,
        especialidades = _ref.especialidades,
        onChangeCantidadMostrar = _ref.onChangeCantidadMostrar,
        onChangeCategoriaMenu = _ref.onChangeCategoriaMenu,
        onChangeTituloBloque = _ref.onChangeTituloBloque,
        props = _ref.props;
    // extraer los props
    var _props$attributes2 = props.attributes,
        cantidadMostrar = _props$attributes2.cantidadMostrar,
        categoriaMenu = _props$attributes2.categoriaMenu,
        tituloBloque = _props$attributes2.tituloBloque; // verificar especialidades

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
      categorias.forEach(function (categoria) {
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
      value: cantidadMostrar || 5
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
    }, especialidades.map(function (especialidad) {
      return Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("li", null, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("img", {
        src: especialidad.imagen_destacada
      }), Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("div", {
        className: "platillo"
      }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("div", {
        className: "precio-platillo"
      }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("h3", null, especialidad.title.rendered), Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("p", null, "$ ", especialidad.precio))), Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("div", {
        className: "contenido-platillo"
      }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("p", null, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])(_wordpress_block_editor__WEBPACK_IMPORTED_MODULE_3__["RichText"].Content, {
        value: especialidad.content.rendered
      }))));
    })));
  }),
  save: function save() {
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

/* harmony default export */ __webpack_exports__["default"] = ("data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4NCjwhLS0gR2VuZXJhdG9yOiBBZG9iZSBJbGx1c3RyYXRvciAxNi4wLjAsIFNWRyBFeHBvcnQgUGx1Zy1JbiAuIFNWRyBWZXJzaW9uOiA2LjAwIEJ1aWxkIDApICAtLT4NCjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+DQo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IkNhcGFfMSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgeD0iMHB4IiB5PSIwcHgiDQoJIHdpZHRoPSIyNS4xNnB4IiBoZWlnaHQ9IjIzLjk1NHB4IiB2aWV3Qm94PSIwIDAgMjUuMTYgMjMuOTU0IiBlbmFibGUtYmFja2dyb3VuZD0ibmV3IDAgMCAyNS4xNiAyMy45NTQiIHhtbDpzcGFjZT0icHJlc2VydmUiPg0KPHJlY3QgeD0iLTAuNDA1IiB5PSItMS42MTIiIGZpbGw9IiMxQjY2MDYiIHdpZHRoPSIyNy4wOSIgaGVpZ2h0PSIyNy4yNTUiLz4NCjxnPg0KCTxwYXRoIGZpbGw9IiNGRkZGRkYiIGQ9Ik0yLjk2NSwxOC43ODRWNS4yMjhoMy4yOTN2MTAuNzAzaDUuMjQ2djIuODUzSDIuOTY1eiIvPg0KCTxwYXRoIGZpbGw9IiNGRkZGRkYiIGQ9Ik0yMy4zMTYsOS40MDJjMCwwLjc5Mi0wLjE0NiwxLjQ1OS0wLjQzOSwyLjAwMWMtMC4yOTQsMC41NDItMC42ODksMC45OC0xLjE4OCwxLjMxMg0KCQljLTAuNDk4LDAuMzMyLTEuMDcyLDAuNTc0LTEuNzIzLDAuNzI4Yy0wLjY1MSwwLjE1My0xLjMyOCwwLjIyOS0yLjAyOSwwLjIyOWgtMS42Mjd2NS4xMTJoLTMuMjc1VjUuMjI4aDQuOTc5DQoJCWMwLjc0LDAsMS40MzMsMC4wNzMsMi4wNzcsMC4yMmMwLjY0NSwwLjE0OCwxLjIwNiwwLjM4MywxLjY4NSwwLjcwOWMwLjQ3OSwwLjMyNSwwLjg1NSwwLjc1NCwxLjEzMSwxLjI4Mg0KCQlDMjMuMTgsNy45NjksMjMuMzE2LDguNjI0LDIzLjMxNiw5LjQwMnogTTIwLjA0Myw5LjQyYzAtMC4zMTktMC4wNjMtMC41ODEtMC4xOTEtMC43ODVzLTAuMy0wLjM2Mi0wLjUxNy0wLjQ3OA0KCQljLTAuMjE4LTAuMTE2LTAuNDYyLTAuMTkyLTAuNzM3LTAuMjI5Yy0wLjI3NC0wLjAzOS0wLjU1OS0wLjA1OC0wLjg1Mi0wLjA1OGgtMS40MzZ2My4xOTdoMS4zNzdjMC4zMDcsMCwwLjYwMS0wLjAyNSwwLjg4Mi0wLjA3Ng0KCQljMC4yOC0wLjA1MiwwLjUzMi0wLjE0MSwwLjc1Ni0wLjI2OWMwLjIyNC0wLjEyNywwLjM5OC0wLjI5NywwLjUyNi0wLjUwOEMxOS45NzksMTAuMDA1LDIwLjA0Myw5Ljc0MSwyMC4wNDMsOS40MnoiLz4NCjwvZz4NCjwvc3ZnPg0K");


/***/ }),

/***/ "./src/textoimagen/index.js":
/*!**********************************!*\
  !*** ./src/textoimagen/index.js ***!
  \**********************************/
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


Object(_wordpress_blocks__WEBPACK_IMPORTED_MODULE_1__["registerBlockType"])('lapizzeria/textoimagen', {
  title: 'La Pizzeria Texto Imagen',
  icon: {
    src: _pizzeria_icon_svg__WEBPACK_IMPORTED_MODULE_4__["ReactComponent"]
  },
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
      default: _pizzeria_icon_svg__WEBPACK_IMPORTED_MODULE_4__["ReactComponent"]
    }
  },
  supports: {
    align: ['wide', 'full'] // Para soportar el hero a tamaño ancho o completo de pantalla

  },
  edit: function edit(props) {
    // Extraer los atributos
    var _props$attributes = props.attributes,
        imagenFondo = _props$attributes.imagenFondo,
        tituloBloque = _props$attributes.tituloBloque,
        textoBloque = _props$attributes.textoBloque,
        urlBloque = _props$attributes.urlBloque,
        imagenBloque = _props$attributes.imagenBloque,
        setAttributes = props.setAttributes;

    var onSeleccionarImagenFondo = function onSeleccionarImagenFondo(nuevaImagen) {
      setAttributes({
        imagenFondo: nuevaImagen.sizes.full.url
      });
    };

    var onChangeTitulo = function onChangeTitulo(nuevoTitulo) {
      setAttributes({
        tituloBloque: nuevoTitulo
      });
    };

    var onChangeTexto = function onChangeTexto(nuevoTexto) {
      setAttributes({
        textoBloque: nuevoTexto
      });
    };

    var onChangeUrl = function onChangeUrl(nuevaUrl) {
      setAttributes({
        urlBloque: nuevaUrl
      });
    };

    var onSeleccionarImagenContenido = function onSeleccionarImagenContenido(nuevaImagen) {
      setAttributes({
        imagenBloque: nuevaImagen.sizes.full.url
      });
    };

    return Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("div", {
      className: "imagen-texto-bloque",
      style: {
        backgroundImage: "url( ".concat(imagenFondo, " )")
      }
    }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])(_wordpress_block_editor__WEBPACK_IMPORTED_MODULE_2__["MediaUpload"], {
      onSelect: onSeleccionarImagenFondo,
      type: "image",
      render: function render(_ref) {
        var open = _ref.open;
        return Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])(_wordpress_components__WEBPACK_IMPORTED_MODULE_3__["Button"], {
          className: "lapizzeria-agregar-imagen",
          onClick: open,
          icon: "format-image",
          showTooltip: "true",
          label: "Cambiar Imagen"
        });
      }
    }), Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("div", {
      className: "contenido-bloque"
    }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("div", {
      className: "texto-bloque"
    }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("h1", {
      className: "titulo"
    }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])(_wordpress_block_editor__WEBPACK_IMPORTED_MODULE_2__["RichText"], {
      placeholder: 'Agrega el titulo del bloque',
      onChange: onChangeTitulo,
      value: tituloBloque
    })), Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("p", null, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])(_wordpress_block_editor__WEBPACK_IMPORTED_MODULE_2__["RichText"], {
      placeholder: 'Agrega el texto del bloque',
      onChange: onChangeTexto,
      value: textoBloque
    })), Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("div", null, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("a", {
      href: urlBloque,
      className: "boton boton-secundario"
    }, "Leer M\xE1s")), Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])(_wordpress_block_editor__WEBPACK_IMPORTED_MODULE_2__["URLInputButton"], {
      onChange: onChangeUrl,
      url: urlBloque
    })), Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("div", {
      className: "imagen-bloque"
    }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("img", {
      src: imagenBloque
    }), Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])(_wordpress_block_editor__WEBPACK_IMPORTED_MODULE_2__["MediaUpload"], {
      onSelect: onSeleccionarImagenContenido,
      type: "image",
      render: function render(_ref2) {
        var open = _ref2.open;
        return Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])(_wordpress_components__WEBPACK_IMPORTED_MODULE_3__["Button"], {
          className: "lapizzeria-agregar-imagen",
          onClick: open,
          icon: "format-image",
          showTooltip: "true",
          label: "Cambiar Imagen"
        });
      }
    }))));
  },
  save: function save(props) {
    // Extraer los atributos
    var _props$attributes2 = props.attributes,
        imagenFondo = _props$attributes2.imagenFondo,
        tituloBloque = _props$attributes2.tituloBloque,
        textoBloque = _props$attributes2.textoBloque,
        urlBloque = _props$attributes2.urlBloque,
        imagenBloque = _props$attributes2.imagenBloque;
    return Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("div", {
      className: "imagen-texto-bloque",
      style: {
        backgroundImage: "url( ".concat(imagenFondo, " )")
      }
    }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("div", {
      className: "contenido-bloque"
    }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("div", {
      className: "texto-bloque"
    }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("h1", {
      className: "titulo"
    }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])(_wordpress_block_editor__WEBPACK_IMPORTED_MODULE_2__["RichText"].Content, {
      value: tituloBloque
    })), Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("p", null, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])(_wordpress_block_editor__WEBPACK_IMPORTED_MODULE_2__["RichText"].Content, {
      value: textoBloque
    })), Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("div", null, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("a", {
      href: urlBloque,
      className: "boton boton-secundario"
    }, "Leer M\xE1s"))), Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("div", {
      className: "imagen-bloque"
    }, Object(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__["createElement"])("img", {
      src: imagenBloque
    }))));
  }
});

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