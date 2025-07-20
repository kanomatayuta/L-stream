<?php
/**
 * Digi Dinos package.
 * PHP version ^7.3|^8.0
 *
 * @category  Web
 * @package   Web_System
 * @author    Digi Dinos <contact@digidinos.com>
 * @copyright 2022 Digi Dinos.
 * @license   Digi Dinos Copyright.
 * @version   GIT: <1.0.0>
 * @link      https://digidinos.com
 * @see       https://digidinos.com
 **/
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

Route::group(['middleware' => ['auth:api', 'check.permission.user']], function () {
    Route::apiResource('campaign', 'CampaignController');
    Route::get('showCampaign/{campaign}', 'CampaignController@showCampaign')->name('campaign.showCampaign');
    Route::get('campaignActive', 'CampaignController@getCampaignIsActive')->name('campaign.campaignActive');
    Route::get('listCampaign', 'CampaignController@listCampaign')->name('campaign.listCampaign');
    Route::put('campaign/active/{campaign}', 'CampaignController@updateActive')->name('campaign.updateActive');
    Route::put('campaign/updateEndDate/{campaign}', 'CampaignController@updateEndDate')->name('campaign.updateEndDate');
    Route::put('campaign/updateStartDate/{campaign}', 'CampaignController@updateStartDate')->name('campaign.updateStartDate');
    Route::apiResource('campaignDetail', 'CampaignDetailController');
    Route::post('campaignDetailPost/update-cost/{campaignDetail}', 'CampaignDetailPostController@updateCost')->name('campaign-detail-post.updateCost');
    Route::get('campaignDetailKol/{campaign}', 'CampaignDetailController@getKol')->name('campaign.getKol');
    Route::get('campaignDetailKolOk/{campaign}', 'CampaignDetailController@getKolOk')->name('campaign.getKolOk');
    Route::post('campaign/detail/store/kols', 'CampaignDetailController@registerKolsToCampaigns')
        ->name('campaignDetail.registerKol');
    Route::post('campaign/detail/remove/kols', 'CampaignDetailController@removeKolsFromCampaign')
        ->name('campaignDetail.removeKol');
    Route::post('export-kol-csv', 'CampaignController@exportKolCSV')->name('campaign.exportKolCsv');
    Route::apiResource('campaign-detail-post', 'CampaignDetailPostController');
    Route::post('campaignDetailPost/create-post/{campaign}', 'CampaignDetailPostController@createPostYoutube')->name('campaign-detail-post.createPostYoutube');
    Route::get('campaignDetailPost/{campaignDetail}', 'CampaignDetailPostController@getCampaignDetailPost')->name('campaign.getCampaignDetailPost');
    Route::apiResource('campaignReport', 'ReportController');
    Route::get('campaignReportShow/{campaign}', 'ReportController@showCampaignReport')->name('campaign.campaignReportShow');
    Route::get('showCampaignAuto/{campaign}', 'CampaignDetailPostController@showCampaignAuto')->name('campaign.showCampaignAuto');
    Route::get('showCampaignTiktokAuto/{campaign}', 'CampaignDetailPostController@showCampaignTiktokAuto')->name('campaign.showCampaignTiktokAuto');
    Route::get('showCampaignYoutubeAuto/{campaign}', 'CampaignDetailPostController@showCampaignYoutubeAuto')->name('campaign.showCampaignYoutubeAuto');
    Route::put('campaignReportUpdate/{campaign}', 'ReportController@updateCampaignReport')->name('campaign.campaignReportUpdate');
    Route::get('campaign-report/{campaign}', 'CampaignDetailController@getKolReport')->name('campaign-detail-post.kol-list');
    Route::post('campaign-detail-post/multiUpdate/{campaign}', 'CampaignDetailPostController@multiUpdate')->name('campaign-detail-post.multi-update');
    Route::get('campaign-detail-post/report/{type}/{campaign}', 'CampaignDetailPostController@getDetailPost')->name('campaign-detail-post.report-list');
    Route::get('campaign-detail/registered-campaign', 'CampaignDetailController@getRegisteredCampaign')->name('campaignDetail.getRegisteredCampaign');
    Route::get('listGenre', 'CampaignController@listGenre')->name('campaign.listGenre');
    Route::post('campaign-detail/import-kols', 'CampaignDetailController@importKol')->name('campaign.importKol');
    Route::get('campaign-detail-post/detail-record/{campaign}', 'CampaignDetailPostController@getRecord')->name('campaign-detail-post.get-record');
});
