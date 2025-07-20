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
 * CreatePaymentDetailsTable class
 *
 * @category Payment
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class CreatePaymentDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('payment_details', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('plan_id')->comment('Plan Id');//Plan is paid
            $table->unsignedBigInteger('user_id')->comment('User Id');//Who paid
            $table->foreign('user_id')->references('id')->on('users');
            $table->unsignedTinyInteger('term_mode')->default(0)->comment('Term mode: 0: Short term, 1: Long term');
            $table->unsignedDecimal('money_amount')->comment('Money amount for short or long term');
            $table->bigInteger('account_search_number')->comment('Limit account search number');// value is -1 means unlimited
            $table->bigInteger('page_search_number')->comment('Limit page search number');// value is -1 means unlimited
            $table->bigInteger('profile_view_number')->comment('Limit profile view number');// value is -1 means unlimited
            $table->bigInteger('full_report_number')->comment('Limit full report number');// value is -1 means unlimited
            $table->bigInteger('export_csv_number')->comment('Limit export csv number');// value is -1 means unlimited
            $table->bigInteger('campaign_register_number')->comment('Limit campaign register number');// value is -1 means unlimited
            $table->bigInteger('insight_list_number')->comment('Limit insight list number');// value is -1 means unlimited
            $table->bigInteger('campaign_list_number')->comment('Limit campaign list number');// value is -1 means unlimited
            $table->date('start_date')->comment('Plan start date');//Plan start date
            $table->date('end_date')->comment('Plan end date');//Plan end date
            $table->unsignedTinyInteger('payment_status')->default(0)->comment('Payment status: 0: un-paid, 1: paid, 2: Cancel, 3: Delete');
            $table->softDeletes();
            $table->timestamps();
        });

        Schema::table('payment_details', function (Blueprint $table) {
            $table->index('plan_id');
            $table->index('term_mode');
            $table->index('account_search_number');
            $table->index('page_search_number');
            $table->index('profile_view_number');
            $table->index('full_report_number');
            $table->index('export_csv_number');
            $table->index('campaign_register_number');
            $table->index('insight_list_number');
            $table->index('campaign_list_number');
            $table->index('start_date');
            $table->index('end_date');
            $table->index('payment_status');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('payment_details');
    }
}
