<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class ChangeEgRateColumnToCampaignDetailPostsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('campaign_detail_posts', function (Blueprint $table) {
            $table->unsignedDecimal('normal_eg_rate', 8, 2)->change();
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
            $table->unsignedDecimal('normal_eg_rate', 8, 1)->change();
        });
    }
}
