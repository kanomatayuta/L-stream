<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddLastPostTimeColumnIntoKolTbl extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('kols', function (Blueprint $table) {
            $table->tinyInteger('last_post_time')->nullable()->comment('Last Post Time');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('kols', function (Blueprint $table) {
            $table->dropColumn('last_post_time');
        });
    }
}
