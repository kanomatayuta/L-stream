<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateKolRatingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('kol_ratings', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id')->comment('User Id');
            $table->foreign('user_id')->references('id')->on('users');
            $table->unsignedBigInteger('kol_id')->comment('KOL Id');
            $table->foreign('kol_id')->references('id')->on('kols');
            $table->integer('rate')->default(0)->nullable()->comment('Kol star rate : 1 -> 5');
            $table->text('comment')->nullable()->comment('User review kol');
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
        Schema::dropIfExists('kol_ratings');
    }
}
