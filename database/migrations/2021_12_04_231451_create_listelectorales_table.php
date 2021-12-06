<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateListelectoralesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('listelectorales', function (Blueprint $table) {
            $table->id();
            $table->string('nom_liste',170);
            $table->string('code',10);
            $table->string('representant_nom');
            $table->string('representant_prenom');
            $table->string('representant_cni');
            $table->string('representant_adresse');
            $table->dateTime('representant_datenaissance');
            $table->foreignId('commune_id')->constrained();
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
        Schema::dropIfExists('listelectorales');
    }
}
