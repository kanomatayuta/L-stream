<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddNewColumnsToCampaignDetailPostsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('campaign_detail_posts', function (Blueprint $table) {
            $table->bigInteger('reach_count')->nullable()->after('share_rate')->default(0);
            $table->unsignedDecimal('reach_rate',8,1)->nullable()->after('share_rate')->default(0);
            $table->bigInteger('download_count')->nullable()->after('share_rate')->default(0);
            $table->unsignedDecimal('download_rate',8,1)->nullable()->after('share_rate')->default(0);
            $table->bigInteger('conversion_count')->nullable()->after('share_rate')->default(0);
            $table->unsignedDecimal('conversion_rate',8,1)->nullable()->after('share_rate')->default(0);
        });

        Schema::table('campaign_detail_posts', function (Blueprint $table) {
            $table->index('reach_count');
            $table->index('reach_rate');
            $table->index('download_count');
            $table->index('download_rate');
            $table->index('conversion_count');
            $table->index('conversion_rate');
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
            $table->dropColumn('reach_count');
            $table->dropColumn('reach_rate');
            $table->dropColumn('download_count');
            $table->dropColumn('download_rate');
            $table->dropColumn('conversion_count');
            $table->dropColumn('conversion_rate');
        });
    }
}
