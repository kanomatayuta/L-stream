<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTabReportsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tab_reports', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('campaign_id')->comment('Campagn Id');
            $table->foreign('campaign_id')->references('id')->on('campaigns');

            $table->unsignedDecimal('cost')->default(0)->comment('cost');
            $table->unsignedDecimal('revenue')->default(0)->comment('revenue');
            $table->unsignedDecimal('roas')->default(0)->comment('roas');
            $table->unsignedDecimal('number_of_kol')->default(0)->comment('number of kol');
            $table->unsignedDecimal('follower')->default(0)->comment('follower');
            $table->unsignedDecimal('follower_unit')->default(0)->comment('follower unit');
            $table->unsignedDecimal('reach_rate')->default(0)->comment('reach rate');

            $table->unsignedDecimal('feed_reach')->default(0)->comment('feed reach');
            $table->unsignedDecimal('feed_reach_rate')->default(0)->comment('feed reach rate');
            $table->unsignedDecimal('feed_download')->default(0)->comment('feed download');
            $table->unsignedDecimal('feed_download_rate')->default(0)->comment('feed download rate');
            $table->unsignedDecimal('feed_engagement_rate')->default(0)->comment('feed engagement rate');

            $table->unsignedDecimal('story_impression')->default(0)->comment('story impression');
            $table->unsignedDecimal('story_impression_rate')->default(0)->comment('story impression rate');
            $table->unsignedDecimal('story_click')->default(0)->comment('story click');
            $table->unsignedDecimal('story_click_rate')->default(0)->comment('story click rate');
            $table->unsignedDecimal('story_reaction')->default(0)->comment('story reaction');
            $table->unsignedDecimal('story_reaction_rate')->default(0)->comment('story reaction rate');

            $table->unsignedDecimal('reed_reach')->default(0)->comment('reed reach');
            $table->unsignedDecimal('reed_reach_rate')->default(0)->comment('reed reach rate');
            $table->unsignedDecimal('reed_download')->default(0)->comment('reed download');
            $table->unsignedDecimal('reed_download_rate')->default(0)->comment('reed download rate');
            $table->unsignedDecimal('reed_engagement_rate')->default(0)->comment('reed engagement rate');
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
        Schema::dropIfExists('tab_reports');
    }
}
