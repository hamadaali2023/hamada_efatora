<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBanksTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('banks', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('vendorId');
            $table->foreign('vendorId')->references('id')->on('vendors_buyers')->onDelete('cascade');

            $table->unsignedBigInteger('buyerId');
            $table->string('iban')->nullable();
            $table->string('persone_name')->nullable();
            $table->integer('countryId')->nullable();
            $table->integer('cityId')->nullable();
            $table->string('bank_name')->nullable();
            $table->string('bank_sub_name')->nullable();
            $table->string('swift_code')->nullable();
            
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
        Schema::dropIfExists('banks');
    }
}
