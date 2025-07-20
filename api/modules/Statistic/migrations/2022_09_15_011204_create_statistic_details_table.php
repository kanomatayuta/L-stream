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
 * CreateStatisticDetailsTable class
 *
 * @category Statistic
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 * @see      https://digidinos.com
 */
class CreateStatisticDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('statistic_details', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id')->comment('User Id');
            $table->foreign('user_id')->references('id')->on('users');
            $table->string('api_url')->comment('API url is called');
            $table->dateTime('day')->comment('Logging data when is called api every time');// Format YYYY-MM date
            $table->text('other_info')->nullable()->comment('Other info with API call');
            $table->timestamps();
        });

        Schema::table('statistic_details', function (Blueprint $table) {
            $table->index('api_url');
            $table->index('day');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('statistic_details');
    }
}
