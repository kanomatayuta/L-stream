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
 * CreateUsersTable class
 *
 * @category User
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('code', 50)->comment('Code of user');
            $table->string('name', 50)->comment('Display name');
            $table->string('username', 50)->comment('Username for login');
            $table->string('email', 50)->unique();
            $table->string('password', 60);
            $table->string('address', 255)->nullable();
            $table->string('avatar_url', 255)->nullable();
            $table->datetime('date_join')->nullable();
            $table->datetime('birthday')->nullable();
            $table->tinyInteger('gender')->comment('0: female, 1: male, 2: other')->default(0);
            $table->tinyInteger('is_active')->comment('0: in active, 1: active')->default(1);
            $table->string('mobile_no', 15)->nullable();
            $table->timestamp('email_verified_at')->nullable();
            $table->rememberToken();
            $table->softDeletes();
            $table->timestamps();
        });

        Schema::table('users', function (Blueprint $table) {
            $table->index('code');
            $table->index('name');
            $table->index('username');
            $table->index('email');
            $table->index('address');
            $table->index('gender');
            $table->index('is_active');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('users');
    }
}
