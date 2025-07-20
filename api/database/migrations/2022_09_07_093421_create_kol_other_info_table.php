<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateKolOtherInfoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('kol_other_info', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('kol_id')->comment('KOL Id');
            $table->foreign('kol_id')->references('id')->on('kols');
            $table->text('followers')->comment('Store followers information monthly via json');
            $table->text('influencers')->comment('Store influencers information monthly via json');
            $table->text('engagements')->comment('Store engagements information monthly via json');
            $table->text('same_accounts')->comment('Store 5 same accounts information via json');
            $table->text('highlight_posts')->comment('Store highlight posts information via json');
            $table->text('likes')->comment('Store likes information via json');
            $table->text('hashtags')->comment('Store 6 hashtags, 6 mentions information via json');
            $table->text('top_hashtags')->comment('Store top 6 hashtags information via json');
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
        Schema::dropIfExists('kol_other_info');
    }
}
