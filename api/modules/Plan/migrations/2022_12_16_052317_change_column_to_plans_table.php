<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class ChangeColumnToPlansTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('plans', function (Blueprint $table) {
            $table->bigInteger('long_term_money_amount')->comment('Amount 2 year (2 year contract)')->nullable()->change();
            $table->bigInteger('short_term_money_amount')->comment('Amount 1 year (1 year contract)')->change();
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
            $table->decimal('long_term_money_amount', 15, 2)->comment('Amount 2 year (2 year contract)')->nullable()->change();
            $table->decimal('short_term_money_amount', 15, 2)->comment('Amount 1 year (1 year contract)')->change();
        });
    }
}
