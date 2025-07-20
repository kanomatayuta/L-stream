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
use Modules\Plan\Controllers\PlanController;
use Modules\User\Controllers\AuthController;

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

Route::group(['middleware' => ['auth:api', 'check.permission.user']], function () {
    Route::apiResource('payment-detail', 'PaymentDetailController');
    Route::get('setting', [AuthController::class, 'setting'])->name('setting.index');
    Route::get('setting/plan/upgrade', [PlanController::class, 'upgradeUserPlan'])->name('setting.upgrade');
    Route::post('setting/user/update', [AuthController::class, 'updateUserInfo'])->name('setting.update');
    Route::post('setting/user/password', [AuthController::class, 'resetPassword'])->name('setting.resetPassword');
});
