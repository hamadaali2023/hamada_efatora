<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateVendorsBuyersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('vendors_buyers', function (Blueprint $table) {
            // $table->increments('id');
            $table->id();
            $table->integer('countryId')->nullable();
            $table->integer('cityId')->nullable();
            $table->integer('stateID')->nullable();
            $table->string('name')->nullable();
            $table->string('email')->unique();
            $table->string('password');
            $table->date('dateOfBirth')->nullable();
            $table->string('mobile')->nullable();
            $table->string('address')->nullable();
            $table->text('photo')->nullable();
            $table->string('gender')->nullable();
            $table->text('detail')->nullable();
            $table->integer('status')->default(1);
            $table->string('type')->default(1);
            $table->text('token')->nullable();
            $table->text('device_token')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('VendorsBuyers');
    }
}
