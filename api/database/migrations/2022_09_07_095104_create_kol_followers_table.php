<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateKolFollowersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('kol_followers', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('kol_id')->comment('KOL Id');
            $table->foreign('kol_id')->references('id')->on('kols');
            $table->text('active_rate')->comment('Store followers information monthly via json');
            $table->text('country')->comment('Store influencers information monthly via json');
            $table->text('city')->comment('Store engagements information monthly via json');
            $table->text('gender_rate')->comment('Store 5 same accounts information via json');
            $table->text('age_rate')->comment('Store highlight posts information via json');
            $table->text('brands')->comment('Store 5 brands information via json');
            $table->text('favorites')->comment('Store 5 favorites information via json');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('kol_followers');
    }
}
