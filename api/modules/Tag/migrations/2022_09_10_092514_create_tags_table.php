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
 */
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

/**
 * CreateTagsTable class
 *
 * @category Tag
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class CreateTagsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tags', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id')->comment('User Id');//Who tag
            $table->foreign('user_id')->references('id')->on('users');
            $table->unsignedBigInteger('kol_id')->comment('KOL Id');//Tag for what KOL
            $table->foreign('kol_id')->references('id')->on('kols');
            $table->unsignedBigInteger('campaign_id')->comment('Campaign Id');//Tag in what campaign
            $table->foreign('campaign_id')->references('id')->on('campaigns');
            $table->text('hash_tags')->nullable()->comment('Store json format');//Content tag
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tags');
    }
}
