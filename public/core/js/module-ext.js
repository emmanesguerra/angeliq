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
/******/ 			Object.defineProperty(exports, name, {
/******/ 				configurable: false,
/******/ 				enumerable: true,
/******/ 				get: getter
/******/ 			});
/******/ 		}
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
/******/ 	__webpack_require__.p = "/";
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = 113);
/******/ })
/************************************************************************/
/******/ ({

/***/ 113:
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__(114);


/***/ }),

/***/ 114:
/***/ (function(module, exports) {



proccessdata = function proccessdata(id, method) {
    axios({
        method: method,
        url: moduleindexurl + '/' + id
    }).then(function (response) {
        $('#modal-danger').modal('hide');
        moduletable.ajax.reload();
        window.moduleformvue.reset();
        proccessnoti({ data: { title: 'Action Completed',
                message: 'This module id #' + id + ' has been removed from the system <br />',
                icon: 'icon glyphicon glyphicon-trash',
                type: 'info'
            }, statusText: '' });
    }).catch(function (error) {
        if (error.response) {
            proccessnoti(error);
        }
    });
};

showmodal = function showmodal(id) {
    module_id = id;
    $('#idtobedeleted').html(id);
    $('#modal-danger').modal('show');
};

moduletable = $('#modulelists').DataTable({
    processing: true,
    "ajax": moduledataurl,
    "aaSorting": [],
    "columns": [{ "data": "id" }, { "data": "module_name" }, { "data": "description" }, { "data": "permissions" }, { "data": "created_at" }, { "data": "updated_at" }, {
        width: "5%",
        bSearchable: false,
        bSortable: false,
        mRender: function mRender(data, type, full) {
            return '<button onclick="showmodal(' + full.id + ')" class="btn btn-primary btn-xs"><i class="fa fa-trash"></i></button>';
        }
    }]
});

/***/ })

/******/ });