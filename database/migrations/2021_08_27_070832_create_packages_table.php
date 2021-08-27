<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePackagesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('packages', function (Blueprint $table) {
            $table->id();
            $table->tinyInteger('package_type')->comment('1=Translation,2=Proofreading,3=TEP,4=Other');
            $table->tinyInteger('field_of_text')->comment('1=General Domain,2=Technical Domain,3=Medical Domain,4=Other');
            $table->json('language_id')->nullable();
            $table->unsignedInteger('number_of_words')->nullable();
            $table->boolean('is_complementary')->comment('1=Yes,0=No');
            $table->string('duration', 191)->nullable();
            $table->string('discount', 191)->nullable();
            $table->string('name', 191)->nullable();
            $table->string('email', 191)->nullable();
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
        Schema::dropIfExists('packages');
    }
}
