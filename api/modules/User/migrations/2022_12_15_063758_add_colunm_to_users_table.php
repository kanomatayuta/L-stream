<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddColunmToUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->bigInteger('page_search_number')->comment('Limit page search number');// value is -1 means unlimited
            $table->bigInteger('profile_view_number')->comment('Limit profile view number');// value is -1 means unlimited
            $table->bigInteger('export_csv_number')->comment('Limit export csv number');// value is -1 means unlimited
            $table->bigInteger('campaign_register_number')->comment('Limit campaign register number');// value is -1 means unlimited

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->dropColumn('page_search_number');
            $table->dropColumn('profile_view_number');
            $table->dropColumn('export_csv_number');
            $table->dropColumn('campaign_register_number');
        });
    }
}
