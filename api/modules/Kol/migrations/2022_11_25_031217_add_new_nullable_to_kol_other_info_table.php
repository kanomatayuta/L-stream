<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddNewNullableToKolOtherInfoTable extends Migration
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
            $table->text('top_hashtags')->nullable()->change();
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
            $table->text('followers');
            $table->text('engagements');
            $table->text('likes');
            $table->text('hashtags');
            $table->text('top_hashtags');
            $table->text('brands');
            $table->text('favorites');
        });
    }
}
