<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Eloquent\Model;

class CreateCRUDnameTable extends Migration {

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Model::unguard();
        Schema::create('crudname',function(Blueprint $table){
            $table->increments("id");
            $table->string("FieldDBname")->nullable();
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('crudname');
    }

}