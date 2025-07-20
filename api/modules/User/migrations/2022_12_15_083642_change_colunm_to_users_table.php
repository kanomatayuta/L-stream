<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class ChangeColunmToUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->bigInteger('page_search_number')->comment('Limit page search number')->nullable()->change();// value is -1 means unlimited
            $table->bigInteger('profile_view_number')->comment('Limit profile view number')->nullable()->change();// value is -1 means unlimited
            $table->bigInteger('export_csv_number')->comment('Limit export csv number')->nullable()->change();// value is -1 means unlimited
            $table->bigInteger('campaign_register_number')->comment('Limit campaign register number')->nullable()->change();// value is -1 means unlimited
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
            $table->bigInteger('page_search_number')->comment('Limit page search number')->change();// value is -1 means unlimited
            $table->bigInteger('profile_view_number')->comment('Limit profile view number')->change();// value is -1 means unlimited
            $table->bigInteger('export_csv_number')->comment('Limit export csv number')->change();// value is -1 means unlimited
            $table->bigInteger('campaign_register_number')->comment('Limit campaign register number')->change();// value is -1 means unlimited
        });
    }
}
