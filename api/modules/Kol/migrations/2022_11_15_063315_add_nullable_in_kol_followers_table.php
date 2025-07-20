<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddNullableInKolFollowersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('kol_followers', function (Blueprint $table) {
            $table->text('country')->comment('Store influencers information monthly via json')->nullable()->change();
            $table->text('gender_rate')->comment('Store 5 same accounts information via json')->nullable()->change();
            $table->text('age_rate')->comment('Store highlight posts information via json')->nullable()->change();
            $table->text('brands')->comment('Store 5 brands information via json')->nullable()->change();
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
            $table->text('country')->comment('Store influencers information monthly via json')->change();
            $table->text('gender_rate')->comment('Store 5 same accounts information via json')->change();
            $table->text('age_rate')->comment('Store highlight posts information via json')->change();
            $table->text('brands')->comment('Store 5 brands information via json')->change();
        });
    }
}
