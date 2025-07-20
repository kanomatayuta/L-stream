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
 **/
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

/**
 * CreateCampaignsTable class
 *
 * @category Campaign
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class CreateCampaignsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('campaigns', function (Blueprint $table) {
            $table->id();
            $table->string('name', 255)->comment('Campaign name');
            $table->unsignedTinyInteger('campaign_mode')->default(0)->comment('Campaign status: 0: manual, 1: auto');
            $table->unsignedBigInteger('genre_id')->comment('Genre FK');
            $table->foreign('genre_id')->references('id')->on('genres');
            $table->dateTime('start_date')->comment('Campaign start date');
            $table->dateTime('end_date')->comment('Campaign end date');
            $table->unsignedTinyInteger('status')->default(0)->comment('0: Draft, 1: Running, 2: Stop');
            $table->softDeletes();
            $table->timestamps();
        });

        Schema::table('campaigns', function (Blueprint $table) {
            $table->index('name');
            $table->index('campaign_mode');
            $table->index('start_date');
            $table->index('end_date');
            $table->index('status');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('campaigns');
    }
}
