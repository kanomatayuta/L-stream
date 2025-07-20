<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddColunmToKolOtherInfoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('kol_other_info', function (Blueprint $table) {
            $table->text('instagram_url')->nullable()->comment('instagram url');
            $table->text('audience_geo')->nullable()->comment('Sort audience geo by rate');
            $table->bigInteger('likes_avg')->nullable()->comment('likes avg');
            $table->bigInteger('comments_avg')->nullable()->comment('comments avg');
            $table->decimal('audience_by_type')->nullable()->comment('infs rate');
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
            $table->dropColumn('instagram_url');
            $table->dropColumn('audience_geo');
            $table->dropColumn('likes_avg');
            $table->dropColumn('comments_avg');
            $table->dropColumn('audience_by_type');
        });
    }
}
