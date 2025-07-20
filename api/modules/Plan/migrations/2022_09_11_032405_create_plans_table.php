<?php
/**
 * Digi Dinos package.
 * PHP version ^7.3|^8.0
 *
 * @category  PHP
 * @package   Web_System
 * @author    Digi Dinos <contact@digidinos.com>
 * @copyright 2022 Digi Dinos.
 * @license   Digi Dinos Copyright.
 * @version   GIT: <1.0.0>
 * @link      https://digidinos.com
 */
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

/**
 * CreatePlansTable class
 *
 * @category Plan
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class CreatePlansTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('plans', function (Blueprint $table) {
            $table->id();
            $table->string('name', 100)->comment('Plan name');
            $table->unsignedTinyInteger('plan_type')->default(0)->comment('Plan type: 0: FREE TRIAL, 1: ESSENTIALS, 2: PERFORMANCE, 3: ADVANCED, 4: ENTERPRISE');//ENTERPRISE,ADVANCED,PERFORMANCE,ESSENTIALS,FREE TRIAL
            $table->decimal('short_term_money_amount')->comment('Amount 1 year (1 year contract)');
            $table->decimal('long_term_money_amount')->comment('Amount 2 year (2 year contract)');
            $table->bigInteger('account_search_number')->comment('Limit account search number');// value is -1 means unlimited
            $table->bigInteger('page_search_number')->comment('Limit page search number');// value is -1 means unlimited
            $table->bigInteger('profile_view_number')->comment('Limit profile view number');// value is -1 means unlimited
            $table->bigInteger('full_report_number')->comment('Limit full report number');// value is -1 means unlimited
            $table->bigInteger('export_csv_number')->comment('Limit export csv number');// value is -1 means unlimited
            $table->bigInteger('campaign_register_number')->comment('Limit campaign register number');// value is -1 means unlimited
            $table->bigInteger('insight_list_number')->comment('Limit insight list number');// value is -1 means unlimited
            $table->bigInteger('campaign_list_number')->comment('Limit campaign list number');// value is -1 means unlimited
            $table->dateTime('start_date')->comment('Plan start date');
            $table->dateTime('end_date')->comment('Plan end date');
            $table->unsignedTinyInteger('status')->default(0)->comment('Plan status: 0: Draft, 1: active, 2: Pending, 3: Delete');
            $table->softDeletes();
            $table->timestamps();
        });

        Schema::table('plans', function (Blueprint $table) {
            $table->index('name');
            $table->index('plan_type');
            $table->index('start_date');
            $table->index('end_date');
            $table->index('status');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('plans');
    }
}
