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
 * @see       https://digidinos.com
 **/
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

/**
 * CreateCampaignDetailPostsTable class
 *
 * @category Campaign
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class CreateCampaignDetailPostsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('campaign_detail_posts', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('campaign_id')->comment('Campagn Id');//For query 
            $table->foreign('campaign_id')->references('id')->on('campaigns');
            $table->unsignedBigInteger('kol_id')->comment('KOL Id');//For query quickly
            $table->foreign('kol_id')->references('id')->on('kols');
            $table->unsignedBigInteger('campaign_detail_id')->comment('Campagn Detail Id');
            $table->foreign('campaign_detail_id')->references('id')->on('campaign_details');
            $table->date('post_date')->comment('Post date');//投稿日
            $table->string('post_url', 500)->comment('Post url');//投稿URL
            $table->string('product_name', 150)->comment('Product name');//商品名
            $table->unsignedDecimal('amount_money')->default(0)->comment('Amount of money');//金額
            $table->unsignedDecimal('number_registration')->default(0)->comment('Number of registration');//登録者数
            $table->unsignedDecimal('regeneration_avg')->default(0)->comment('Average regeneration');//平均再生
            $table->unsignedDecimal('regeneration_pr')->default(0)->comment('PR regeneration');//PR再生
            $table->unsignedDecimal('good_count')->default(0)->comment('いいね');//いいね
            $table->unsignedDecimal('comment_count')->default(0)->comment('number of comments');//コメント数
            $table->unsignedDecimal('normal_eg_rate')->default(0)->comment('Normal EG%');//通常EG%
            $table->unsignedDecimal('preg_rate')->default(0)->comment('PREG%');//PREG%
            $table->unsignedDecimal('share_count')->default(0)->comment('Share');//シェア
            $table->unsignedDecimal('share_rate')->default(0)->comment('Share rate');//シェア率
            $table->unsignedDecimal('earning')->default(0)->comment('Earning');//売上
            $table->unsignedDecimal('roas')->default(0)->comment('ROAS');//ROAS
            $table->timestamps();
        });

        Schema::table('campaign_detail_posts', function (Blueprint $table) {
            $table->index('post_date');
            $table->index('post_url');
            $table->index('product_name');
            $table->index('amount_money');
            $table->index('number_registration');
            $table->index('regeneration_avg');
            $table->index('regeneration_pr');
            $table->index('good_count');
            $table->index('normal_eg_rate');
            $table->index('preg_rate');
            $table->index('share_count');
            $table->index('share_rate');
            $table->index('earning');
            $table->index('roas');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('campaign_detail_posts');
    }
}
