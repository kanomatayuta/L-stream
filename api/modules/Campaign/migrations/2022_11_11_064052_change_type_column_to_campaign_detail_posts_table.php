<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class ChangeTypeColumnToCampaignDetailPostsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('campaign_detail_posts', function (Blueprint $table) {
            $table->unsignedDecimal('number_registration', 8, 1)->change();
            $table->unsignedDecimal('regeneration_avg', 8, 1)->change();
            $table->unsignedDecimal('normal_eg_rate', 8, 1)->change();
            $table->unsignedDecimal('preg_rate', 8, 1)->change();
            $table->unsignedDecimal('share_rate', 8, 1)->change();
            $table->unsignedDecimal('reaction_rate', 8, 1)->change();
            $table->unsignedDecimal('click_rate', 8, 1)->change();
            $table->unsignedDecimal('impression_rate', 8, 1)->change();
            $table->unsignedDecimal('roas', 8, 1)->change();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('campaign_detail_posts', function (Blueprint $table) {
            $table->unsignedDecimal('number_registration')->change();
            $table->unsignedDecimal('regeneration_avg')->change();
            $table->unsignedDecimal('normal_eg_rate')->change();
            $table->unsignedDecimal('preg_rate')->change();
            $table->unsignedDecimal('share_rate')->change();
            $table->unsignedDecimal('reaction_rate')->change();
            $table->unsignedDecimal('click_rate')->change();
            $table->unsignedDecimal('impression_rate')->change();
            $table->unsignedDecimal('roas')->change();
        });
    }
}
