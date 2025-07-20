<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class UpdateTabReportsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('tab_reports', function (Blueprint $table) {
            $table->bigInteger('regeneration_pr')->default(0)->comment('Regeneration PR');
            $table->unsignedDecimal('preg_rate')->default(0)->comment('Engagement rate avg');
            $table->unsignedDecimal('revenue_rate')->default(0)->comment('Revenue rate');
            $table->unsignedDecimal('share_rate')->default(0)->comment('Share rate');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('tab_reports', function (Blueprint $table) {
            $table->dropColumn('regeneration_pr');
            $table->dropColumn('preg_rate');
            $table->dropColumn('revenue_rate');
            $table->dropColumn('share_rate');
        });
    }
}
