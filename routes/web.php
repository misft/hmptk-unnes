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

Route::post('/kirim_pesan', 'PostController@postPesan');

Route::get('/alumni', 'AdminAlumniController@pageAlumni');

Route::post('/post_alumni', 'PostController@postAlumni');