<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class DropColumnsInKolOtherInfoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('kol_other_info', function (Blueprint $table) {
            $table->dropColumn('influencers');
            $table->dropColumn('same_accounts');
            $table->dropColumn('highlight_posts');
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
            $table->text('influencers')->comment('Store influencers information monthly via json');
            $table->text('highlight_posts')->comment('Store highlight posts information via json');
            $table->text('same_accounts')->comment('Store 5 same accounts information via json');
        });
    }
}
