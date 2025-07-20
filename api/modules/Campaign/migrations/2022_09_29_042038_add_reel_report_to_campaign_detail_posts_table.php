<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddReelReportToCampaignDetailPostsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('campaign_detail_posts', function (Blueprint $table) {
            $table->unsignedTinyInteger('report_type')->default(0)->after('share_rate')->comment('0: Feed, 1: Story, 2: Reel');
            $table->unsignedDecimal('impression_rate')->nullable()->after('share_rate')->default(0)->comment('Impression rate');//合計インプ%
            $table->unsignedDecimal('impression_count')->nullable()->after('share_rate')->default(0)->comment('Impression');//合計インプ
            $table->unsignedDecimal('click_rate')->nullable()->after('share_rate')->default(0)->comment('Click rate');//合計クリック%
            $table->unsignedDecimal('click_count')->nullable()->after('share_rate')->default(0)->comment('Click');//合計クリック
            $table->unsignedDecimal('reaction_rate')->nullable()->after('share_rate')->default(0)->comment('Reaction rate');//合計スタンプ%
            $table->unsignedDecimal('reaction_count')->nullable()->after('share_rate')->default(0)->comment('Reaction');//合計スタンプ
        });

        Schema::table('campaign_detail_posts', function (Blueprint $table) {
            $table->index('report_type');
            $table->index('impression_count');
            $table->index('impression_rate');
            $table->index('click_count');
            $table->index('click_rate');
            $table->index('reaction_count');
            $table->index('reaction_rate');
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
            $table->dropColumn('impression_count');
            $table->dropColumn('impression_rate');
            $table->dropColumn('click_count');
            $table->dropColumn('click_rate');
            $table->dropColumn('reaction_count');
            $table->dropColumn('reaction_rate');
            $table->dropColumn('report_type');
        });
    }
}
