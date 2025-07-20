<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class UpdateUserTableV1 extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->string('website', 255)->comment('Website Company')->nullable();
            $table->string('representative', 50)->comment('Representative')->nullable();
            $table->integer('plan_id')->comment('Plan');
            $table->datetime('plan_start_date')->nullable()->comment('Plan start date');
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
            $table->dropColumn('website');
            $table->dropColumn('representative');
            $table->dropColumn('plan_id');
            $table->dropColumn('plan_start_date');
        });
    }
}
