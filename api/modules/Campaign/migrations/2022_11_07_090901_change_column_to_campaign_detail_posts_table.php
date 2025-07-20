<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class ChangeColumnToCampaignDetailPostsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('campaign_detail_posts', function (Blueprint $table) {
            $table->date('post_date')->comment('Post date')->nullable()->change();//投稿日
            $table->string('post_url', 500)->comment('Post url')->nullable()->change();//投稿URL
            $table->string('product_name', 150)->comment('Product name')->nullable()->change();//商品名
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('campaign_detail_posts', function (Blueprint $table) {
            $table->date('post_date')->comment('Post date')->change();//投稿日
            $table->string('post_url', 500)->comment('Post url')->change();//投稿URL
            $table->string('product_name', 150)->comment('Product name')->change();//商品名
        });
    }
}
