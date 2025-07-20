<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class ChangeNullalbleColumnToKolOtherInfoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('kol_other_info', function (Blueprint $table) {
            $table->text('followers')->nullable()->change();
            $table->text('engagements')->nullable()->change();
            $table->text('likes')->nullable()->change();
            $table->text('hashtags')->nullable()->change();
            $table->text('brands')->nullable()->change();
            $table->text('favorites')->nullable()->change();
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
            $table->text('followers')->change();
            $table->text('engagements')->change();
            $table->text('likes')->change();
            $table->text('hashtags')->change();
            $table->text('brands')->change();
            $table->text('favorites')->change();
        });
    }
}
