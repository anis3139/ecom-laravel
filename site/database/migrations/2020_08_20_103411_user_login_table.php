<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class UserLoginTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('user_login', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name');
            $table->string('password');
            $table->string('username');
            $table->string('email');
            $table->string('phone');
            $table->tinyInteger('gender')->default(1);
            $table->string('address');
            $table->string('shipping_address');
            $table->string('distric');
            $table->string('city')->nullable();
            $table->string('country');
            $table->text('massage')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
