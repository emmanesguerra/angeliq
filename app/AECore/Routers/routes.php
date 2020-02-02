<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::prefix('admin')->group(function () {
    Route::get('/', function() {
        return redirect()->route('admin.login');
    });
    Route::get('/login', '\App\AECore\Controller\AELoginController@showLoginForm')->name('admin.login');
    Route::post('/login', '\App\AECore\Controller\AELoginController@login')->name('admin.login.post');


    Route::middleware(['auth'])->group(function () {
        Route::get('/dashboard', '\App\AECore\Controller\AEHomeController@index')->name('admin.home');
        Route::get('/logout', '\App\AECore\Controller\AELoginController@logout')->name('admin.logout');

        Route::prefix('users')->group(function () {
            Route::get('/', '\App\AECore\Controller\User\UserController@index')->name('user.index');
            Route::get('/data', '\App\AECore\Controller\User\UserController@data')->name('user.data');
            Route::get('/{id}', '\App\AECore\Controller\User\UserController@show')->name('user.show');
            Route::post('/', '\App\AECore\Controller\User\UserController@store')->name('user.store');
            Route::put('/', '\App\AECore\Controller\User\UserController@update')->name('user.update');
            Route::delete('/{id}', '\App\AECore\Controller\User\UserController@destroy')->name('user.destroy');
        });

        Route::prefix('settings')->group(function () {
            Route::get('/', '\App\AECore\Controller\Setting\SettingController@index')->name('setting.index');
            Route::post('/', '\App\AECore\Controller\Setting\SettingController@store')->name('setting.store');
        });

        Route::prefix('modules')->group(function () {
            Route::get('/', '\App\AECore\Controller\Modules\ModuleController@index')->name('module.index');
            Route::get('/data', '\App\AECore\Controller\Modules\ModuleController@data')->name('module.data');
            Route::post('/', '\App\AECore\Controller\Modules\ModuleController@store')->name('module.store');
            Route::delete('/{id}', '\App\AECore\Controller\Modules\ModuleController@destroy')->name('module.destroy');
        });

        Route::prefix('permissions')->group(function () {
            Route::get('/', '\App\AECore\Controller\User\PermissionController@index')->name('permission.index');
            Route::get('/{id}', '\App\AECore\Controller\User\PermissionController@getPermission')->name('permission.getdata');
            Route::post('/', '\App\AECore\Controller\User\PermissionController@store')->name('permission.store');
        });

        Route::prefix('navigations')->group(function () {
            Route::get('/', '\App\AECore\Controller\Navigation\NavigationController@index')->name('navigation.index');
            Route::get('/data', '\App\AECore\Controller\Navigation\NavigationController@data')->name('navigation.getdata');
            Route::post('/', '\App\AECore\Controller\Navigation\NavigationController@store')->name('navigation.store');
            Route::put('/', '\App\AECore\Controller\Navigation\NavigationController@update')->name('navigation.update');
            Route::delete('/', '\App\AECore\Controller\Navigation\NavigationController@destroy')->name('navigation.destroy');
        });

        Route::prefix('pages')->group(function () {
            Route::get('/', '\App\AECore\Controller\Page\PageController@index')->name('page.index');
            Route::get('/data', '\App\AECore\Controller\Page\PageController@data')->name('page.data');
            Route::post('/template', '\App\AECore\Controller\Page\PageController@template')->name('page.template');
            Route::get('/{id}', '\App\AECore\Controller\Page\PageController@show')->name('page.show');
            Route::post('/', '\App\AECore\Controller\Page\PageController@store')->name('page.store');
            Route::put('/', '\App\AECore\Controller\Page\PageController@update')->name('page.update');
            Route::delete('/{id}', '\App\AECore\Controller\Page\PageController@destroy')->name('page.destroy');
        });

        Route::prefix('contents')->group(function () {
            Route::get('/', '\App\AECore\Controller\Content\ContentController@index')->name('maincontents.index');
            Route::get('/data', '\App\AECore\Controller\Content\ContentController@data')->name('maincontents.data');
            Route::get('/{id}', '\App\AECore\Controller\Content\ContentController@show')->name('maincontents.show');
            Route::post('/', '\App\AECore\Controller\Content\ContentController@store')->name('maincontents.store');
            Route::put('/', '\App\AECore\Controller\Content\ContentController@update')->name('maincontents.update');
            Route::delete('/{id}', '\App\AECore\Controller\Content\ContentController@destroy')->name('maincontents.destroy');
        });

        Route::prefix('panels')->group(function () {
            Route::get('/', '\App\AECore\Controller\Content\PanelController@index')->name('panels.index');
            Route::get('/data', '\App\AECore\Controller\Content\PanelController@data')->name('panels.data');
            Route::get('/{id}', '\App\AECore\Controller\Content\PanelController@show')->name('panels.show');
            Route::post('/', '\App\AECore\Controller\Content\PanelController@store')->name('panels.store');
            Route::put('/', '\App\AECore\Controller\Content\PanelController@update')->name('panels.update');
            Route::delete('/{id}', '\App\AECore\Controller\Content\PanelController@destroy')->name('panels.destroy');
        });

        Route::prefix('files')->group(function () {
            Route::get('/', '\App\AECore\Controller\Uploads\FileController@index')->name('files.index');
            Route::get('/process/{type?}', '\App\AECore\Controller\Uploads\FileController@filedata')->name('files.process.get');
            Route::post('/process', '\App\AECore\Controller\Uploads\FileController@filearchived')->name('files.process.post');
            Route::put('/process', '\App\AECore\Controller\Uploads\FileController@filerestore')->name('files.process.put');
            Route::delete('/process', '\App\AECore\Controller\Uploads\FileController@filedelete')->name('files.process.delete');
            Route::get('/{id}', '\App\AECore\Controller\Uploads\FileController@show')->name('files.show');
            Route::post('/', '\App\AECore\Controller\Uploads\FileController@store')->name('files.store');
            Route::put('/', '\App\AECore\Controller\Uploads\FileController@update')->name('files.update');
            Route::delete('/{id}', '\App\AECore\Controller\Uploads\FileController@destroy')->name('files.destroy');
            Route::post('/upload', '\App\AECore\Controller\Uploads\FileController@upload')->name('files.upload');
        });

        Route::prefix('contactus')->group(function () {
            Route::get('/', '\App\AECore\Controller\ContactUs\ContactUsController@index')->name('contactus.index');
            Route::get('/data', '\App\AECore\Controller\ContactUs\ContactUsController@data')->name('contactus.data');
            Route::get('/{id}', '\App\AECore\Controller\ContactUs\ContactUsController@show')->name('contactus.show');
            Route::post('/', '\App\AECore\Controller\ContactUs\ContactUsController@store')->name('contactus.store');
            Route::put('/', '\App\AECore\Controller\ContactUs\ContactUsController@update')->name('contactus.update');
            Route::delete('/{id}', '\App\AECore\Controller\ContactUs\ContactUsController@destroy')->name('contactus.destroy');
        });
    });
});

Route::get('/{slug?}', '\App\AECore\Controller\AEController@index')->where('slug', '^(?!admin$).*$');
