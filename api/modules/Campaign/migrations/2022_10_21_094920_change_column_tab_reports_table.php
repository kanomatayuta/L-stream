<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class ChangeColumnTabReportsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('tab_reports', function (Blueprint $table) {
            $table->bigInteger('reed_reach')->default(0)->change();
            $table->bigInteger('reed_download')->default(0)->change();
            $table->bigInteger('story_reaction')->default(0)->change();
            $table->bigInteger('story_click')->default(0)->change();
            $table->bigInteger('story_impression')->default(0)->change();
            $table->bigInteger('feed_download')->default(0)->change();
            $table->bigInteger('feed_reach')->default(0)->change();
            $table->bigInteger('follower')->default(0)->change();
            $table->bigInteger('follower_unit')->default(0)->change();
            $table->bigInteger('number_of_kol')->default(0)->change();
            $table->bigInteger('cost')->default(0)->change();
            $table->bigInteger('revenue')->default(0)->change();
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
            $table->unsignedDecimal('reed_reach')->default(0)->change();
            $table->unsignedDecimal('reed_download')->default(0)->change();
            $table->unsignedDecimal('story_reaction')->default(0)->change();
            $table->unsignedDecimal('story_click')->default(0)->change();
            $table->unsignedDecimal('story_impression')->default(0)->change();
            $table->unsignedDecimal('feed_download')->default(0)->change();
            $table->unsignedDecimal('feed_reach')->default(0)->change();
            $table->unsignedDecimal('follower')->default(0)->change();
            $table->unsignedDecimal('follower_unit')->default(0)->change();
            $table->unsignedDecimal('number_of_kol')->default(0)->change();
            $table->unsignedDecimal('cost')->default(0)->change();
            $table->unsignedDecimal('revenue')->default(0)->change();
        });
    }
}
