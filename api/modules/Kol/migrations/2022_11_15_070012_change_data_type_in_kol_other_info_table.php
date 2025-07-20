<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class ChangeDataTypeInKolOtherInfoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('kol_other_info', function (Blueprint $table) {
            $table->text('country')->nullable()->comment('KOL country')->change();
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
            $table->string('country', 50)->nullable()->comment('KOL country')->change();
        });
    }
}
