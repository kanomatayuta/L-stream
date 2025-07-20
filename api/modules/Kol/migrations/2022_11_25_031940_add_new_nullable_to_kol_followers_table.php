<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddNewNullableToKolFollowersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('kol_followers', function (Blueprint $table) {
            $table->text('active_rate')->nullable()->change();
            $table->text('city')->nullable()->change();
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
        Schema::table('kol_followers', function (Blueprint $table) {
            $table->text('active_rate');
            $table->text('city');
            $table->text('favorites');
        });
    }
}
