<?php
/**
 * Digi Dinos package.
 * PHP version ^7.3|^8.0
 *
 * @category  PHP
 * @package   Web_System
 * @author    Digi Dinos <contact@digidinos.com>
 * @copyright 2022 Digi Dinos.
 * @license   Digi Dinos Copyright.
 * @version   GIT: <1.0.0>
 * @link      https://digidinos.com
 * @see       https://digidinos.com
 */
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

/**
 * CreateStatisticsTable class
 *
 * @category Statistic
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class CreateStatisticsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('statistics', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id')->comment('User Id');
            $table->foreign('user_id')->references('id')->on('users');
            $table->bigInteger('account_search_number')->default(0)->comment('Account search number');// Reset value is 0 very monthly
            $table->bigInteger('page_search_number')->default(0)->comment('Page search number');// Reset value is 0 very monthly
            $table->bigInteger('profile_view_number')->default(0)->comment('Profile view number');// Reset value is 0 very monthly
            $table->bigInteger('full_report_number')->default(0)->comment('Full report number');// Reset value is 0 very monthly
            $table->bigInteger('export_csv_number')->default(0)->comment('Export csv number');// Reset value is 0 very monthly
            $table->bigInteger('campaign_register_number')->default(0)->comment('Campaign register number');// Reset value is 0 very monthly
            $table->bigInteger('insight_list_number')->default(0)->comment('Insight list number');// Reset value is 0 very monthly
            $table->bigInteger('campaign_list_number')->default(0)->comment('Campaign list number');// Reset value is 0 very monthly
            $table->integer('month')->comment('Count number in month');// Format YYYYMM integer
            $table->timestamps();
        });

        Schema::table('statistics', function (Blueprint $table) {
            $table->index('month');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('statistics');
    }
}
