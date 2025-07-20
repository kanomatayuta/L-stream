<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class UpdateTagsTableV1 extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('tags', function (Blueprint $table) {
            $table->dropForeign(['kol_id']);
            $table->dropColumn('kol_id');
            $table->dropForeign(['campaign_id']);
            $table->dropColumn('campaign_id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('tags', function (Blueprint $table) {
            $table->unsignedBigInteger('kol_id')->comment('KOL Id');//Tag for what KOL
            $table->foreign('kol_id')->references('id')->on('kols');
            $table->unsignedBigInteger('campaign_id')->comment('Campaign Id');//Tag in what campaign
            $table->foreign('campaign_id')->references('id')->on('campaigns');
        });
    }
}
