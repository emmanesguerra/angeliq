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
/******/ 	return __webpack_require__(__webpack_require__.s = 158);
/******/ })
/************************************************************************/
/******/ ({

/***/ 158:
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__(159);


/***/ }),

/***/ 159:
/***/ (function(module, exports) {


$('#producttab').on('shown.bs.tab', function (e) {
    $('#productlisttab').trigger('click');
});

$('#productformtab').on('shown.bs.tab', function (e) {
    axios.get(categoryoptionurl).then(function (response) {
        Vue.nextTick(function () {
            productformvue.categories = response.data.data;
        });
    });
    axios.get(productoptionurl).then(function (response) {
        Vue.nextTick(function () {
            productformvue.products = response.data.data;
        });
    });
});

proccessdata = function proccessdata(id, method) {
    axios({
        method: method,
        url: categoryindexurl + '/' + id
    }).then(function (response) {
        if (response.status == 200) {
            window.categoryformvue.model = response.data;
            window.categoryformvue.errors = [];
            $('#categoryformtab').tab('show');
            proccessnoti({ data: { title: 'Action Completed',
                    message: 'This category id #' + id + ' has been retreived and ready to be updated <br />',
                    icon: 'icon glyphicon glyphicon-info-sign',
                    type: 'info'
                }, statusText: '' });
        } else {
            $('#modal-danger').modal('hide');
            categorytable.ajax.reload();
            window.categoryformvue.reset();
            proccessnoti({ data: { title: 'Action Completed',
                    message: 'This category id #' + id + ' has been removed from the system <br />',
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

proccessdataproduct = function proccessdataproduct(id, method) {
    axios({
        method: method,
        url: productindexurl + '/' + id
    }).then(function (response) {
        if (response.status == 200) {
            window.productformvue.model = response.data;
            window.productformvue.errors = [];
            $('#productformtab').tab('show');
            proccessnoti({ data: { title: 'Action Completed',
                    message: 'This product id #' + id + ' has been retreived and ready to be updated <br />',
                    icon: 'icon glyphicon glyphicon-info-sign',
                    type: 'info'
                }, statusText: '' });
        } else {
            $('#modal-danger2').modal('hide');
            producttable.ajax.reload();
            window.productformvue.reset();
            proccessnoti({ data: { title: 'Action Completed',
                    message: 'This product id #' + id + ' has been removed from the system <br />',
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
    category_id = id;
    $('#idtobedeleted').html(id);
    $('#modal-danger').modal('show');
};

showmodalProduct = function showmodalProduct(id) {
    product_id = id;
    $('#idtobedeleted2').html(id);
    $('#modal-danger2').modal('show');
};

categorytable = $('#categorylists').DataTable({
    processing: true,
    "ajax": categorydataurl,
    "aaSorting": [],
    "columns": [{ "data": "id" }, { "data": "name" }, { "data": "short_description" }, { "data": "sequence" }, { "data": "created_at" }, { "data": "updated_at" }, {
        width: "5%",
        bSearchable: false,
        bSortable: false,
        mRender: function mRender(data, type, full) {
            return '<img width="150px" src="' + full.full_path + '" />';
        }
    }, {
        width: "5%",
        bSearchable: false,
        bSortable: false,
        mRender: function mRender(data, type, full) {
            return '<button onclick="proccessdata(' + full.id + ', `get`)" class="btn btn-primary btn-xs"><i class="fa fa-pencil "></i></button>&nbsp;&nbsp;' + '<button onclick="showmodal(' + full.id + ')" class="btn btn-primary btn-xs"><i class="fa fa-trash"></i></button>';
        }
    }]
});

producttable = $('#productlists').DataTable({
    processing: true,
    "ajax": productdataurl,
    "aaSorting": [],
    "columns": [{ "data": "id" }, { "data": "category.name" }, { "data": "name" }, { "data": "description" }, { "data": "selling_price" }, { "data": "sequence" }, { "data": "is_bestseller" }, { "data": "created_at" }, { "data": "updated_at" }, {
        width: "5%",
        bSearchable: false,
        bSortable: false,
        mRender: function mRender(data, type, full) {
            return '<img width="150px" src="' + full.full_path_primary + '" />';
        }
    }, {
        width: "5%",
        bSearchable: false,
        bSortable: false,
        mRender: function mRender(data, type, full) {
            return '<button onclick="proccessdataproduct(' + full.id + ', `get`)" class="btn btn-primary btn-xs"><i class="fa fa-pencil "></i></button>&nbsp;&nbsp;' + '<button onclick="showmodalProduct(' + full.id + ')" class="btn btn-primary btn-xs"><i class="fa fa-trash"></i></button>';
        }
    }]
});

/***/ })

/******/ });