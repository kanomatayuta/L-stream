<?php
/**
 * Digi Dinos package.
 * PHP version ^7.3|^8.0.
 *
 * @category  PHP
 *
 * @author    Digi Dinos <contact@digidinos.com>
 * @copyright 2022 Digi Dinos.
 * @license   Digi Dinos Copyright.
 *
 * @version   GIT: <1.0.0>
 *
 * @see      https://digidinos.com
 */
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/
Route::group(['middleware' => ['auth:api', 'check.permission.admin']], function () {
    Route::apiResource('user', 'UserController');
});

Route::group(['middleware' => ['guest:api']], function () {
    Route::post('auth/login', 'AuthController@login')->name('auth.login');
    Route::post('forget-password', 'UserController@forgetPassword')->name('forgetPassword');
    Route::post('update-password', 'UserController@updatePassword')->name('updatePassword');
});

Route::group(['middleware' => ['auth:api']], function () {
    Route::post('auth/logout', 'AuthController@logout')->name('auth.logout');
    Route::get('auth/me', 'AuthController@getProfile')->name('auth.getProfile');
});
