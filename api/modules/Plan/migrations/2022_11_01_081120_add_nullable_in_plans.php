<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddNullableInPlans extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('plans', function (Blueprint $table) {
            $table->decimal('long_term_money_amount')->comment('Amount 2 year (2 year contract)')->nullable()->change();
            $table->bigInteger('account_search_number')->comment('Limit account search number')->nullable()->change();
            $table->bigInteger('full_report_number')->comment('Limit full report number')->nullable()->change();
            $table->bigInteger('insight_list_number')->comment('Limit insight list number')->nullable()->change();
            $table->bigInteger('campaign_list_number')->comment('Limit campaign list number')->nullable()->change();
            $table->dateTime('start_date')->comment('Plan start date')->nullable()->change();
            $table->dateTime('end_date')->comment('Plan end date')->nullable()->change();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('plans', function (Blueprint $table) {
            $table->decimal('long_term_money_amount')->comment('Amount 2 year (2 year contract)')->change();
            $table->bigInteger('account_search_number')->comment('Limit account search number')->change();
            $table->bigInteger('full_report_number')->comment('Limit full report number')->change();
            $table->bigInteger('insight_list_number')->comment('Limit insight list number')->change();
            $table->bigInteger('campaign_list_number')->comment('Limit campaign list number')->change();
            $table->dateTime('start_date')->comment('Plan start date')->change();
            $table->dateTime('end_date')->comment('Plan end date')->change();
        });
    }
}
