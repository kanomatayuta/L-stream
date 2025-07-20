<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddColumnToKolOtherInfoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('kol_other_info', function (Blueprint $table) {
            $table->bigInteger('views_avg')->nullable()->comment('view avg');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('kol_other_info', function (Blueprint $table) {
            $table->dropColumn('views_avg');
        });
    }
}
