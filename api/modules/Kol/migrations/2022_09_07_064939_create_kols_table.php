<?php
/**
 * Digi Dinos package.
 * PHP version ^7.3|^8.0
 *
 * @category  Web
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
 * CreateKolsTable class
 *
 * @category Kol
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class CreateKolsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('kols', function (Blueprint $table) {
            $table->id();
            $table->unsignedTinyInteger('social_type')->default(0)->comment('0: Instagram, 1: Youtube, 2: Tiktok');
            $table->string('social_id', 50)->nullable()->comment('Id on socical');
            $table->string('username', 60)->comment('Nick name');
            $table->string('full_name', 150)->nullable()->comment('Full name');
            // $table->unsignedTinyInteger('gender')->nullable()->default(0)->comment('KOL gender: 0: femal, 1: male, 2: other');
            // $table->unsignedInteger('age')->nullable()->default(0)->comment('KOL age');
            // $table->unsignedTinyInteger('marital_status')->nullable()->default(0)->comment('0: single, 1: married, 2: widowed, 3: divorced, 4: other');
            // $table->date('birthday')->nullable()->comment('KOL birthday');
            $table->string('description', 500)->nullable()->comment('KOL description');
            $table->string('avatar_url', 500)->nullable()->comment('Avatar url');
            $table->unsignedDecimal('like_avg', 15)->default(0)->comment('Like average');
            $table->unsignedDecimal('comment_avg', 15)->default(0)->comment('Comment average');
            $table->unsignedDecimal('posts_count', 15)->default(0)->comment('Total post');
            $table->unsignedDecimal('followers_count', 15)->default(0)->comment('Total follower');
            $table->unsignedDecimal('engagement_count', 15)->default(0)->comment('Engagement count');
            $table->unsignedDecimal('engagement_rate', 15)->default(0)->comment('Engagement rate');
            $table->text('social_networks')->nullable()->comment('List of social networks: store json format.');// store json format.
            $table->softDeletes();
            $table->timestamps();
        });

        Schema::table('kols', function (Blueprint $table) {
            $table->index('social_type');
            $table->index('social_id');
            $table->index('full_name');
            $table->index('username');
            $table->index('description');
            // $table->index('gender');
            // $table->index('age');
            // $table->index('marital_status');
            $table->index('like_avg');
            $table->index('comment_avg');
            $table->index('posts_count');
            $table->index('followers_count');
            $table->index('engagement_count');
            $table->index('engagement_rate');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('kols');
    }
}
