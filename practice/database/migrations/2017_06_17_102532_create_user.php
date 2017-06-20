<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUser extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->increments('id');
            $table->string('first_name');

            $table->string('last_name');
            $table->string('email');
            $table->string('password');
            $table->enum('sex');
            $table->date('bdate');

        });
    }


    public function down()
    {
        Schema::drop('users');
    }
}