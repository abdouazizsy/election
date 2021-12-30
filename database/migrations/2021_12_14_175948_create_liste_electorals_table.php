<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateListeElectoralsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('liste_electorals', function (Blueprint $table) {
            $table->id();
            $table->string('nom_liste',70);
            $table->string('code',70);
            $table->string('representant_nom',70);
            $table->string('representant_prenom',100);
            $table->string('representant_cni',70);
            $table->string('representant_adresse',70);
            $table->string('representant_datenaissance',70);
            $table->foreignId('comm_id')->constrained();
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
        Schema::dropIfExists('liste_electorals');
    }
}
