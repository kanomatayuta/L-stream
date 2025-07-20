<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateKolTagsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('kol_tags', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('kol_id')->comment('KOL Id');
            $table->foreign('kol_id')->references('id')->on('kols');
            $table->unsignedBigInteger('tag_id')->comment('Tag Id');
            $table->foreign('tag_id')->references('id')->on('tags');
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
        Schema::dropIfExists('kol_tags');
    }
}
