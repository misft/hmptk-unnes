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

Route::get('/', 'AdminBeritaController@pageHome');
Route::get('/berita/{id}', 'AdminBeritaController@pageLihatBerita');
Route::get('/lihatberita','MainController@lihatberita');
Route::get('/article','MainController@article');
Route::get('/chemengfair','MainController@chemengfair');
Route::get('/alumni','MainController@alumni');
Route::get('/aboutus','MainController@aboutus');
Route::get('/kontak','MainController@kontak');
Route::get('/departemen','MainController@departemen');

Route::post('/kirim_pesan', 'MainController@postPesan');

Route::get('/alumni', 'AdminAlumniController@pageAlumni');

Route::post('/post_alumni', 'MainController@postAlumni');