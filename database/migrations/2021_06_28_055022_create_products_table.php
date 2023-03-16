<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('categoryId');
            $table->unsignedBigInteger('shopId')->nullable();
            $table->foreign('shopId')->references('id')->on('shops')->onDelete('cascade');
            $table->string('name');
            $table->mediumText('description');
            $table->float('price');
            
            $table->integer('quantity')->nullable();
            $table->string('modal_number')->nullable();
            $table->string('department')->nullable();
            $table->string('cover_img')->nullable();
            
            $table->string('slug')->nullable();
            $table->integer('status')->default(0);
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
        Schema::dropIfExists('products');
    }
}
