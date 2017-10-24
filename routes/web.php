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

Route::get('/', 'BaseController@getIndex');

//Данная запись должна быть всегда в конце
Route::get('{id}', 'BaseController@getStatic');

Route::get('catalog/{id}', 'ServicesController@getCatalog');