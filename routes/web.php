<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/', 'PagesController@home');
Route::get('/about', 'PagesController@about');
Route::get('/team', 'TeamController@index');
Route::get('/pages/getNews/{id}', 'PagesController@getNews');
Route::get('/students', 'StudentsController@index');
Route::get('/students/create', 'StudentsController@create');
Route::post('/students/store', 'StudentsController@store');
Route::get('/students/{student}', 'StudentsController@show');
Route::delete('/students/{student}', 'StudentsController@destroy');
Route::patch('/students/{student}', 'StudentsController@update');
Route::get('/students/{student}/edit', 'StudentsController@edit');
Route::get('/materi', 'PagesController@indexMateri');
Route::post('/materi', 'PagesController@indexMateri');
Route::get('/materi/{id}', 'PagesController@detailMateri');
Route::get('/kegiatan', 'PagesController@indexKegiatan');
Route::get('/pengurus', 'PagesController@indexPengurus');
Route::get('/galeri', 'PagesController@indexGaleri');
Route::post('/galeri', 'PagesController@indexGaleri');
Route::get('/login', 'LoginController@login');
Route::post('/validateLogin', 'LoginController@validateLogin');
Route::get('/registration/form', 'PendaftaranController@create');
Route::post('/registration/store', 'PendaftaranController@store');

Route::middleware([loginValidation::class])->group(function () {
    Route::get('/dashboard', 'LoginController@dashboard');
    Route::get('/logout', 'LoginController@logout');
    Route::get('/dokumen', 'DokumenController@index');
    Route::post('/dokumen', 'DokumenController@index');
    Route::delete('/dokumen/{id}', 'DokumenController@destroy');
    Route::get('/dokumen/create', 'DokumenController@create');
    Route::post('/dokumen/store', 'DokumenController@store');
    Route::get('/dokumen/edit/{dokumen}', 'DokumenController@edit');
    Route::patch('/dokumen/update/{dokumen}', 'DokumenController@update');
    Route::get('/newsAdmin', 'NewsController@index');
    Route::post('/newsAdmin', 'NewsController@index');
    Route::delete('/newsAdmin/{id}', 'NewsController@destroy');
    Route::get('/newsAdmin/create', 'NewsController@create');
    Route::post('/newsAdmin/store', 'NewsController@store');
    Route::get('/newsAdmin/edit/{news}', 'NewsController@edit');
    Route::patch('/newsAdmin/update/{news}', 'NewsController@update');
    Route::get('/materiAdmin', 'MateriController@index');
    Route::post('/materiAdmin', 'MateriController@index');
    Route::delete('/materiAdmin/{id}', 'MateriController@destroy');
    Route::get('/materiAdmin/create', 'MateriController@create');
    Route::post('/materiAdmin/store', 'MateriController@store');
    Route::get('/materiAdmin/edit/{materi}', 'MateriController@edit');
    Route::patch('/materiAdmin/update/{materi}', 'MateriController@update');
    Route::get('/galeriAdmin', 'GaleriController@index');
    Route::post('/galeriAdmin', 'GaleriController@index');
    Route::delete('/galeriAdmin/{id}', 'GaleriController@destroy');
    Route::get('/galeriAdmin/create', 'GaleriController@create');
    Route::post('/galeriAdmin/store', 'GaleriController@store');
    Route::get('/galeriAdmin/edit/{galeri}', 'GaleriController@edit');
    Route::patch('/galeriAdmin/update/{galeri}', 'GaleriController@update');
    Route::get('/pengurusAdmin', 'PengurusController@index');
    Route::post('/pengurusAdmin', 'PengurusController@index');
    Route::delete('/pengurusAdmin/{id}', 'PengurusController@destroy');
    Route::get('/pengurusAdmin/create', 'PengurusController@create');
    Route::post('/pengurusAdmin/store', 'PengurusController@store');
    Route::get('/pengurusAdmin/edit/{pengurus}', 'PengurusController@edit');
    Route::patch('/pengurusAdmin/update/{pengurus}', 'PengurusController@update');
    Route::get('/kegiatanAdmin', 'KegiatanController@index');
    Route::post('/kegiatanAdmin', 'KegiatanController@index');
    Route::delete('/kegiatanAdmin/{id}', 'KegiatanController@destroy');
    Route::get('/kegiatanAdmin/create', 'KegiatanController@create');
    Route::post('/kegiatanAdmin/store', 'KegiatanController@store');
    Route::get('/kegiatanAdmin/edit/{kegiatan}', 'KegiatanController@edit');
    Route::patch('/kegiatanAdmin/update/{kegiatan}', 'KegiatanController@update');
    Route::get('/registration', 'PendaftaranController@index');
    Route::post('/registration', 'PendaftaranController@index');
    Route::delete('/registration/{id}', 'PendaftaranController@destroy');
});
