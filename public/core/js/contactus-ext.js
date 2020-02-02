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
/******/ 	return __webpack_require__(__webpack_require__.s = 131);
/******/ })
/************************************************************************/
/******/ ({

/***/ 131:
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__(132);


/***/ }),

/***/ 132:
/***/ (function(module, exports) {



proccessdata = function proccessdata(id, method) {
    axios({
        method: method,
        url: contactindexurl + '/' + id
    }).then(function (response) {
        if (response.status == 200) {
            window.contactformvue.model = response.data;
            window.contactformvue.model.storehours.push({
                day: null,
                start: null,
                end: null
            });
            window.contactformvue.errors = [];
            window.contactformvue.removehours = [];
            $('#formtab').tab('show');
            proccessnoti({ data: { title: 'Action Completed',
                    message: 'This page id #' + id + ' has been retreived and ready to be updated <br />',
                    icon: 'icon glyphicon glyphicon-info-sign',
                    type: 'info'
                }, statusText: '' });
        } else {
            $('#modal-danger').modal('hide');
            contacttable.ajax.reload();
            window.contactformvue.reset();
            proccessnoti({ data: { title: 'Action Completed',
                    message: 'This contact id #' + id + ' has been removed from the system <br />',
                    icon: 'icon glyphicon glyphicon-trash',
                    type: 'info'
                }, statusText: '' });
        }
    }).catch(function (error) {
        if (error.response) {
            proccessnoti(error);
        }
    });
};

showmodal = function showmodal(id) {
    contact_id = id;
    $('#idtobedeleted').html(id);
    $('#modal-danger').modal('show');
};

contacttable = $('#contactlists').DataTable({
    processing: true,
    "ajax": contactdataurl,
    "aaSorting": [],
    "columns": [{ "data": "id" }, { "data": "address" }, { "data": "contact_person" }, {
        mRender: function mRender(data, type, full) {
            return full.marker.substring(0, 40) + '...';
        }
    }, { "data": "created_at" }, { "data": "updated_at" }, {
        width: "5%",
        bSearchable: false,
        bSortable: false,
        mRender: function mRender(data, type, full) {
            return '<button onclick="proccessdata(' + full.id + ', `get`)" class="btn btn-primary btn-xs"><i class="fa fa-pencil "></i></button>&nbsp;&nbsp;' + '<button onclick="showmodal(' + full.id + ')" class="btn btn-primary btn-xs"><i class="fa fa-trash"></i></button>';
        }
    }]
});

/***/ })

/******/ });