<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class UpdateColumnToCampaignDetailPostsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('campaign_detail_posts', function (Blueprint $table) {
            $table->dropColumn('amount_money');
            $table->bigInteger('share_count')->default(0)->change();
            $table->bigInteger('regeneration_pr')->default(0)->change();
            $table->bigInteger('reaction_count')->default(0)->change();
            $table->bigInteger('click_count')->default(0)->change();
            $table->bigInteger('impression_count')->default(0)->change();
            $table->bigInteger('earning')->default(0)->change();
            $table->bigInteger('good_count')->default(0)->change();
            $table->bigInteger('comment_count')->default(0)->change();
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
            $table->unsignedDecimal('amount_money')->default(0)->change();
            $table->unsignedDecimal('share_count')->default(0)->change();
            $table->unsignedDecimal('regeneration_pr')->default(0)->change();
            $table->unsignedDecimal('reaction_count')->default(0)->change();
            $table->unsignedDecimal('click_count')->default(0)->change();
            $table->unsignedDecimal('impression_count')->default(0)->change();
            $table->unsignedDecimal('earning')->default(0)->change();
            $table->unsignedDecimal('good_count')->default(0)->change();
            $table->unsignedDecimal('comment_count')->default(0)->change();
        });
    }
}
