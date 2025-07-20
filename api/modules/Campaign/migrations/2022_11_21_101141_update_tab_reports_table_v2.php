<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class UpdateTabReportsTableV2 extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('tab_reports', function (Blueprint $table) {
            $table->bigInteger('total_click')->default(0)->comment('Total click');
            $table->unsignedDecimal('click_rate')->default(0)->comment('Click rate');
            $table->unsignedDecimal('er_avg')->default(0)->comment('Engagement rate avg');
            $table->unsignedDecimal('conversion_avg')->default(0)->comment('Conversion avg');
            $table->bigInteger('total_conversion')->default(0)->comment('Total click');
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
            $table->dropColumn('total_click');
            $table->dropColumn('click_rate');
            $table->dropColumn('er_avg');
            $table->dropColumn('conversion_avg');
            $table->dropColumn('total_conversion');
        });

    }
}
