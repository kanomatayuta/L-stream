<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class UpdateKolOtherInfoV1 extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('kol_other_info', function (Blueprint $table) {
            $table->string('country', 50)->nullable()->comment('KOL country');
            $table->text('demography_by_age')->nullable()->comment('Follower Gender Rate , Age Rate');
            $table->text('audience_ethnicity')->nullable()->comment('Audience Ethnicity');
            $table->text('blogger_hashtags')->nullable()->comment('Sort blogger hashtags by er_avg');
            $table->text('audience_interests')->nullable()->comment('Sort audience interests by rate');
            $table->text('brands_mentions')->nullable()->comment('Sort brands mentions by mention_er');
            $table->unsignedDecimal('aqs', 15)->default(0)->comment('aqs Rate');
            $table->unsignedDecimal('like_avg_30_latest_post', 15)->default(0)->comment('Like rate 30 latest posts');
            $table->unsignedDecimal('comment_avg_30_latest_post', 15)->default(0)->comment('Comment rate 30 latest posts');
            $table->unsignedDecimal('like_avg_by_not_follower', 15)->default(0)->comment('Like rate by not follower');
            $table->unsignedDecimal('comment_avg_by_not_follower', 15)->default(0)->comment('Comment rate by not follower');
            $table->unsignedDecimal('active_rate_by_like_people', 15)->default(0)->comment('Comment rate by not follower');
            $table->string('email', 255)->nullable()->comment('Email Profile');
            $table->unsignedDecimal('like_avg_10_latest_reel', 15)->default(0)->comment('Like avg 10 latest reel');
            $table->unsignedDecimal('comment_avg_10_latest_reel', 15)->default(0)->comment('Comment avg 10 latest reel');
            $table->unsignedDecimal('view_avg_10_latest_reel', 15)->default(0)->comment('View avg 10 latest reel');
            $table->unsignedDecimal('er_avg_10_latest_reel', 15)->default(0)->comment('ER avg 10 latest reel');
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
            $table->dropColumn('country');
            $table->dropColumn('demography_by_age');
            $table->dropColumn('audience_ethnicity');
            $table->dropColumn('blogger_hashtags');
            $table->dropColumn('audience_interests');
            $table->dropColumn('brands_mentions');
            $table->dropColumn('like_avg_30_latest_post');
            $table->dropColumn('aqs');
            $table->dropColumn('comment_avg_30_latest_post');
            $table->dropColumn('like_avg_by_not_follower');
            $table->dropColumn('comment_avg_by_not_follower');
            $table->dropColumn('active_rate_by_like_people');
            $table->dropColumn('email');
            $table->dropColumn('like_avg_10_latest_reel');
            $table->dropColumn('comment_avg_10_latest_reel');
            $table->dropColumn('view_avg_10_latest_reel');
            $table->dropColumn('er_avg_10_latest_reel');
        });
    }
}
