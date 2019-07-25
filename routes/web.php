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
Route::get('/article/{id}', 'MainController@pageArticle');
Route::get('/chemengfair','MainController@chemengfair');
Route::get('/chemengfair/{id}', 'MainController@pageChemengfair');
Route::get('/alumni','MainController@alumni');
Route::get('/aboutus','MainController@aboutus');
Route::get('/kontak','MainController@kontak');
Route::get('/departemen','MainController@departemen');
Route::get('/departemen/{id}', 'MainController@pageDepartemen'); 
Route::get('/kabinet', 'MainController@kabinet');
Route::get('/kabinet/{name}', 'MainController@pageKabinet');
Route::post('/kirim_pesan', 'MainController@postPesan');
Route::get('/berita/cari', 'MainController@cariBerita');

Route::get('/alumni', 'AdminAlumniController@pageAlumni');

Route::post('/post_alumni', 'MainController@postAlumni');